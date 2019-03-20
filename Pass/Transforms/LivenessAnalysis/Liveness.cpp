#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/BasicBlock.h"
#include <string>
#include <vector>
#include <set>
#include <unordered_map>
#include <algorithm>

using namespace llvm;
using namespace std;

#define DEBUG_TYPE "Liveness"

using namespace llvm;

set<string> opSkip = {"br", "ret","icmp"};

namespace {
struct Liveness : public FunctionPass {
    string func_name = "test1";
    static char ID;
    Liveness() : FunctionPass(ID) {}

    void initial(vector<BasicBlock*>& workList, vector<set<Value*>>& UEVar, vector<set<Value*>>& VarKill){

        for(int i = 0;i < workList.size();++ i) {
            for(auto& inst : *workList[i]) {
                if (inst.isBinaryOp() || opSkip.find(inst.getOpcodeName()) == opSkip.end()) {
                    
                    Value* v1 = inst.getOperand(0); // left  oprand
                    Value* v2 = inst.getOperand(1); // right oprand
                    if(VarKill[i].find(v1) == VarKill[i].end()) UEVar[i].insert(v1);
                    if(VarKill[i].find(v2) == VarKill[i].end()) UEVar[i].insert(v2);
                    
                    auto* ptr = dyn_cast<User>(&inst);
                    VarKill[i].insert(ptr);
                }
                
            }
        }

    }

    void computeLiveOut(int idx, unordered_map<BasicBlock*, int> BBtoId, vector<BasicBlock*> workList, vector<set<Value*>> UEVar, vector<set<Value*>> VarKill, vector<set<Value*>>& LiveOut){
        BasicBlock* bb = workList[idx];

        for(BasicBlock* Succ : successors(bb)) {
            int i = BBtoId.at(Succ);
            
            set<Value*> dest, dest1;
            set_difference(LiveOut[i].begin(), LiveOut[i].end(), VarKill[i].begin(), VarKill[i].end(), inserter(dest, dest.begin()));
            set_union(dest.begin(), dest.end(), UEVar[i].begin(), UEVar[i].end(), inserter(dest1, dest1.begin()));
            set_union(dest1.begin(), dest1.end(), LiveOut[idx].begin(), LiveOut[idx].end(), inserter(LiveOut[idx], LiveOut[idx].begin()));
            dest.clear();dest1.clear();
        }
    }


    bool runOnFunction(Function &F) override {
        
        errs() << "\n\n==================================== " << F.getName() << " ====================================" << "\n";
        //if(F.getName() != func_name) return 0;
        vector<BasicBlock*> workList;   // keep all the basic blocks
        unordered_map<BasicBlock*, int> BBtoId;

        int count = 0;
        for (auto& basic_block : F){
            workList.push_back(&basic_block);
            BBtoId[&basic_block] = count;
            count ++;
        }
        if(count != workList.size()) return 0;
        
        vector<set<Value*>> UEVar(count);
        vector<set<Value*>> VarKill(count);
        vector<set<Value*>> LiveOut(count);

        initial(workList, UEVar, VarKill);
        
        bool flag = true;
        while(flag){
            flag = false;
            for(int i = 0;i < workList.size();++ i){
                set<Value*> prev = LiveOut[i];

                computeLiveOut(i, BBtoId, workList, UEVar, VarKill, LiveOut);
                if(!std::equal(prev.begin(), prev.end(),LiveOut[i].begin(), LiveOut[i].end()))
                    flag = true;
            }
        }

        for(int i = 0;i < workList.size();++ i) {
            errs() << "--------------------- Basic Block ";
            workList[i]->printAsOperand(errs(), false);
            errs() << " ---------------------\n";
            for(auto& inst : *workList[i])
                errs() << inst << "\n";
            errs() << "--------------------------------- Live Out ---------------------------------- \n";
            for(auto it = LiveOut[i].begin();it != LiveOut[i].end();++ it)
                errs() << **it << "\n";
        }


    return false;
  }
}; 
}  

char Liveness::ID = 0;
static RegisterPass<Liveness> X("Liveness", "Liveness Analysis",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);
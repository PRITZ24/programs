#include<iostream>
using namespace std;
int main(){
    int i,j,n,p=0;
    cout<<"Enter the value of n:";
    cin>>n;
    int sequence[n+1];
    int deadline[n+1];
    int profit[n+1];
    for( i=1;i<=n;i++){

        sequence[i]=-1;
    }
    cout<<"Enter the profit:\n";
    for(i=1;i<=n;i++){
        cin>>profit[i];
    }
    cout<<"Enter the deadline:\n";
    for(i=1;i<=n;i++){
        cin>>deadline[i];
    }

    for(i=1;i<=n;i++){
        j = deadline[i];
        while(j>=1){
            if(sequence[j]==-1){
                sequence[j]=i;
                p=p+profit[i];
                break;
            }else{
                j--;
            }
        }

    }
    cout<<"the total profit is"<<p;
    return 0;
}

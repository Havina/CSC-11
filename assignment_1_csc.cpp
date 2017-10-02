#include <cstdio>
#include <string>

using namespace std;

int main()
{
    char digits [37] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    
   // printf("%s", digits);
    
    int base10;
    int newbase;
        
    printf("Enter your base for your unassigned integer: ");
    scanf("%d",&base10);
    printf("You entered %d\n", base10);
    
    printf("Enter the new base for your intger: ");
    scanf("%d",&newbase);
    printf("You entered %d\n", newbase);
    
    string s="";
    // char s [50];
    
    while(base10>newbase)
    {
    	int rem = base10 % newbase;
    	printf("R: %d, Digit Char : %c\n", rem, digits[rem]);
    	//s=digits[rem]+s; //try adding digits[rem] to end (maybe with .append() ) then reverse string
    	s.push_back( digits[rem] );
		//printf("%s\n",s);
    	
    	base10 = base10 / newbase;
	}
	//s=digits[base10]+s; //add last digit
	s.push_back( digits[base10] ); 
	
	//reverse string
	string rev="";
	for ( int i = 0;  i<s.size() ; i++ ){
		rev.push_back( s[ s.size()-1] ); 
		s.pop_back();
	}
	
	printf("%s\n",rev.c_str() );
}

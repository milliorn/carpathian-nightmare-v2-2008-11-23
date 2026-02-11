//:: dmp_token_check1
//:: Checks to see if more then 1 portal's tag is stored in the token list.  Used in conv tree.
#include "dmp_include"
int StartingConditional()
{
    if(dmpGetPortalCount() >= 1)
        return TRUE;
    return FALSE;
}

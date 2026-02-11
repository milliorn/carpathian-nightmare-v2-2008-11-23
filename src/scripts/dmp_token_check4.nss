//:: dmp_token_check4
//:: Checks to see if more then 2 portal tag is stored in the token list.  Used in conv tree.
#include "dmp_include"
int StartingConditional()
{
    if(dmpGetPortalCount() >= 4)
        return TRUE;
    return FALSE;
}

//:: dmp_token_check3
//:: Checks to see if more then 2 portal tag is stored in the token list.  Used in conv tree.
#include "dmp_include"
int StartingConditional()
{
    if(dmpGetPortalCount() >= 3)
        return TRUE;
    return FALSE;
}

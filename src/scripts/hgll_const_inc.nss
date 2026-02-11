// This lists all of the constant ints that are to be used for LL

// This is the path to your servervault. It must be set correctly for Letoscript to work.
const string NWNPATH = "C:/NeverwinterNights/NWN/servervault/";//windows sample
// const string NWNPATH = "/home/funkyswerve/nwn/servervault/";//linux sample

const int PHOENIX = FALSE;//set this to true if you are using the older version of Letoscript, 3-18, rather than the newer 3-24 (other versions are 'bridge' versions with bugs)

const int DEBUG = FALSE;//set this to TRUE to enable debugging

const int DEV_CRIT_DISABLED = FALSE;//set this to TRUE to disable devastating critical feat selection on levelup

// Experience Requirements for Legendary Levels
// Adjust as desired. These were set by increasing the additional amount required for the
// previous level by 25%. Level 40 required 39000 experience points, so Level 41 was set
// to require 39000 x 1.25 = 48800 experience points. This will be ALOT on some worlds,
// and not enough on others, so adjust to suit your needs.
const int BASE_XP_LVL_40 = 780000; //780000
const int XP_REQ_LVL41 = 821000;    //828,800 - 821,000
const int XP_REQ_LVL42 = 905000;    //889,700 - 863,000
const int XP_REQ_LVL43 = 1034000;    //965,900 - 906,000
const int XP_REQ_LVL44 = 1210000;   //1,061,100 - 949,000
const int XP_REQ_LVL45 = 1435000;   //1,180,100 - 994,000
const int XP_REQ_LVL46 = 1711000;   //1,328,900 - 1,039,000
const int XP_REQ_LVL47 = 2040000;   //1,514,900 - 1,084,000
const int XP_REQ_LVL48 = 2424000;   //1,747,400 - 1,132,000
const int XP_REQ_LVL49 = 2865000;   //2,038,000 - 1,181,000
const int XP_REQ_LVL50 = 3365000;   //2,401,200 - 1,231,000
const int XP_REQ_LVL51 = 3926000;   //2,855,200 - 1,281,000
const int XP_REQ_LVL52 = 4550000;   //3,422,700 - 1,333,000
const int XP_REQ_LVL53 = 5239000;   //4,132,100 - 1,386,000
const int XP_REQ_LVL54 = 5995000;   //5,018,900 - 1,440,000
const int XP_REQ_LVL55 = 6820000;   //6,127,300 - 1,495,000
const int XP_REQ_LVL56 = 7716000;   //7,512,900 - 1,551,000
const int XP_REQ_LVL57 = 8145000;   //9,244,800 - 1,608,000
const int XP_REQ_LVL58 = 9189000;  //11,409,700 - 1,666,000
const int XP_REQ_LVL59 = 10310000;  //14,115,900 - 1,725,000
const int XP_REQ_LVL60 = 11510000;  //17,498,600 - 1,785,000

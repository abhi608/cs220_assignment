/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/deepak/6thSem/CS220A/Assignments/verilog2/Q1/Q1.v";
static int ng1[] = {1, 0};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {3U, 0U};
static int ng4[] = {2, 0};
static int ng5[] = {3, 0};
static unsigned int ng6[] = {2U, 0U};
static int ng7[] = {4, 0};
static int ng8[] = {5, 0};
static unsigned int ng9[] = {8U, 0U};
static int ng10[] = {6, 0};
static unsigned int ng11[] = {0U, 0U};
static int ng12[] = {7, 0};
static unsigned int ng13[] = {6U, 0U};
static int ng14[] = {8, 0};
static int ng15[] = {9, 0};
static unsigned int ng16[] = {12U, 0U};
static int ng17[] = {10, 0};
static int ng18[] = {11, 0};
static unsigned int ng19[] = {1U, 0U};
static unsigned int ng20[] = {16U, 0U};
static unsigned int ng21[] = {9U, 0U};
static unsigned int ng22[] = {35U, 0U};
static unsigned int ng23[] = {32U, 0U};
static unsigned int ng24[] = {36U, 0U};



static void Always_61_0(char *t0)
{
    char t8[8];
    char t18[8];
    char t19[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    int t16;
    char *t17;

LAB0:    t1 = (t0 + 4120U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 4440);
    *((int *)t2) = 1;
    t3 = (t0 + 4152);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(61, ng0);

LAB5:    xsi_set_current_line(62, ng0);
    t4 = (t0 + 2888);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 32, t6, 27, t7, 32);
    t9 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t9, t8, 0, 0, 27, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t8, 0, 8);
    t5 = (t8 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 21);
    *((unsigned int *)t8) = t11;
    t12 = *((unsigned int *)t6);
    t13 = (t12 >> 21);
    *((unsigned int *)t5) = t13;
    t14 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t14 & 63U);
    t15 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t15 & 63U);

LAB6:    t7 = ((char*)((ng2)));
    t16 = xsi_vlog_unsigned_case_compare(t8, 32, t7, 32);
    if (t16 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng1)));
    t16 = xsi_vlog_unsigned_case_compare(t8, 32, t2, 32);
    if (t16 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t16 = xsi_vlog_unsigned_case_compare(t8, 32, t2, 32);
    if (t16 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t16 = xsi_vlog_unsigned_case_compare(t8, 32, t2, 32);
    if (t16 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t16 = xsi_vlog_unsigned_case_compare(t8, 32, t2, 32);
    if (t16 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t16 = xsi_vlog_unsigned_case_compare(t8, 32, t2, 32);
    if (t16 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng10)));
    t16 = xsi_vlog_unsigned_case_compare(t8, 32, t2, 32);
    if (t16 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng12)));
    t16 = xsi_vlog_unsigned_case_compare(t8, 32, t2, 32);
    if (t16 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng14)));
    t16 = xsi_vlog_unsigned_case_compare(t8, 32, t2, 32);
    if (t16 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng15)));
    t16 = xsi_vlog_unsigned_case_compare(t8, 32, t2, 32);
    if (t16 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng17)));
    t16 = xsi_vlog_unsigned_case_compare(t8, 32, t2, 32);
    if (t16 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng18)));
    t16 = xsi_vlog_unsigned_case_compare(t8, 32, t2, 32);
    if (t16 == 1)
        goto LAB29;

LAB30:
LAB32:
LAB31:    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);

LAB33:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng21)));
    memset(t18, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB35;

LAB34:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB35;

LAB38:    if (*((unsigned int *)t3) > *((unsigned int *)t2))
        goto LAB37;

LAB36:    *((unsigned int *)t18) = 1;

LAB37:    t7 = (t18 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (~(t10));
    t12 = *((unsigned int *)t18);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB39;

LAB40:    xsi_set_current_line(97, ng0);

LAB43:    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 6, 0LL);
    xsi_set_current_line(99, ng0);
    t2 = ((char*)((ng23)));
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t18, 0, 8);
    xsi_vlog_unsigned_add(t18, 6, t2, 6, t4, 4);
    t3 = ((char*)((ng21)));
    memset(t19, 0, 8);
    xsi_vlog_unsigned_minus(t19, 6, t18, 6, t3, 6);
    t5 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t5, t19, 0, 0, 6, 0LL);

LAB41:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t18, 0, 8);
    t5 = (t18 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 20);
    t12 = (t11 & 1);
    *((unsigned int *)t18) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 20);
    t15 = (t14 & 1);
    *((unsigned int *)t5) = t15;
    t7 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t7, t18, 0, 0, 1, 0LL);
    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t18, 0, 8);
    t5 = (t18 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 5);
    t12 = (t11 & 1);
    *((unsigned int *)t18) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 5);
    t15 = (t14 & 1);
    *((unsigned int *)t5) = t15;
    t7 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t7, t18, 0, 0, 1, 0LL);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t18, 0, 8);
    t5 = (t18 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 4);
    t12 = (t11 & 1);
    *((unsigned int *)t18) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 4);
    t15 = (t14 & 1);
    *((unsigned int *)t5) = t15;
    t7 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t7, t18, 0, 0, 1, 0LL);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t18, 0, 8);
    t5 = (t18 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 3);
    t12 = (t11 & 1);
    *((unsigned int *)t18) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 3);
    t15 = (t14 & 1);
    *((unsigned int *)t5) = t15;
    t7 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t7, t18, 0, 0, 1, 0LL);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t18, 0, 8);
    t5 = (t18 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 2);
    t12 = (t11 & 1);
    *((unsigned int *)t18) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 2);
    t15 = (t14 & 1);
    *((unsigned int *)t5) = t15;
    t7 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t7, t18, 0, 0, 1, 0LL);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t18, 0, 8);
    t5 = (t18 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 1);
    t12 = (t11 & 1);
    *((unsigned int *)t18) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 1);
    t15 = (t14 & 1);
    *((unsigned int *)t5) = t15;
    t7 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t7, t18, 0, 0, 1, 0LL);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t18, 0, 8);
    t5 = (t18 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 0);
    t12 = (t11 & 1);
    *((unsigned int *)t18) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 0);
    t15 = (t14 & 1);
    *((unsigned int *)t5) = t15;
    t7 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t7, t18, 0, 0, 1, 0LL);
    goto LAB2;

LAB7:    xsi_set_current_line(66, ng0);
    t9 = ((char*)((ng3)));
    t17 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t17, t9, 0, 0, 6, 0LL);
    goto LAB33;

LAB9:    xsi_set_current_line(67, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 6, 0LL);
    goto LAB33;

LAB11:    xsi_set_current_line(68, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 6, 0LL);
    goto LAB33;

LAB13:    xsi_set_current_line(69, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 6, 0LL);
    goto LAB33;

LAB15:    xsi_set_current_line(72, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 6, 0LL);
    goto LAB33;

LAB17:    xsi_set_current_line(73, ng0);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 6, 0LL);
    goto LAB33;

LAB19:    xsi_set_current_line(76, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 6, 0LL);
    goto LAB33;

LAB21:    xsi_set_current_line(77, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 6, 0LL);
    goto LAB33;

LAB23:    xsi_set_current_line(83, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 6, 0LL);
    goto LAB33;

LAB25:    xsi_set_current_line(84, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 6, 0LL);
    goto LAB33;

LAB27:    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 6, 0LL);
    goto LAB33;

LAB29:    xsi_set_current_line(87, ng0);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 6, 0LL);
    goto LAB33;

LAB35:    t6 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB37;

LAB39:    xsi_set_current_line(92, ng0);

LAB42:    xsi_set_current_line(93, ng0);
    t9 = ((char*)((ng22)));
    t17 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t17, t9, 0, 0, 6, 0LL);
    xsi_set_current_line(94, ng0);
    t2 = ((char*)((ng23)));
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    memset(t18, 0, 8);
    xsi_vlog_unsigned_add(t18, 6, t2, 6, t4, 4);
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t18, 0, 0, 6, 0LL);
    goto LAB41;

}


extern void work_m_09373395010086159653_0981665465_init()
{
	static char *pe[] = {(void *)Always_61_0};
	xsi_register_didat("work_m_09373395010086159653_0981665465", "isim/Q1_test_isim_beh.exe.sim/work/m_09373395010086159653_0981665465.didat");
	xsi_register_executes(pe);
}

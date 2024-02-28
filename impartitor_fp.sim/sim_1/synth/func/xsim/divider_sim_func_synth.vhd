-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sun Nov 12 17:29:36 2023
-- Host        : DESKTOP-94J4BL7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/AN_3/An3_sem1/SSC/impartitor_fp/impartitor_fp.sim/sim_1/synth/func/xsim/divider_sim_func_synth.vhd
-- Design      : divider
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UC is
  port (
    Term_OBUF : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : out STD_LOGIC;
    LoadA : out STD_LOGIC;
    \T_1__3\ : out STD_LOGIC;
    \FSM_sequential_state_reg[2]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Start_IBUF : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    SignA : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ManB_IBUF : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \Qout_reg[7]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ManA_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Clk_IBUF_BUFG : in STD_LOGIC
  );
end UC;

architecture STRUCTURE of UC is
  signal \FSM_sequential_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_9_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[0]_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[2]_0\ : STD_LOGIC;
  signal \^loada\ : STD_LOGIC;
  signal \^t_1__3\ : STD_LOGIC;
  signal cnt0 : STD_LOGIC;
  signal \cnt0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \cnt0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \cnt0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \cnt0_carry__3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \cnt0_carry__3_n_3\ : STD_LOGIC;
  signal \cnt0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \cnt0_carry__4_n_0\ : STD_LOGIC;
  signal \cnt0_carry__4_n_1\ : STD_LOGIC;
  signal \cnt0_carry__4_n_2\ : STD_LOGIC;
  signal \cnt0_carry__4_n_3\ : STD_LOGIC;
  signal \cnt0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \cnt0_carry__5_n_0\ : STD_LOGIC;
  signal \cnt0_carry__5_n_1\ : STD_LOGIC;
  signal \cnt0_carry__5_n_2\ : STD_LOGIC;
  signal \cnt0_carry__5_n_3\ : STD_LOGIC;
  signal \cnt0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__6_n_3\ : STD_LOGIC;
  signal cnt0_carry_i_1_n_0 : STD_LOGIC;
  signal cnt0_carry_i_2_n_0 : STD_LOGIC;
  signal cnt0_carry_i_3_n_0 : STD_LOGIC;
  signal cnt0_carry_i_4_n_0 : STD_LOGIC;
  signal cnt0_carry_n_0 : STD_LOGIC;
  signal cnt0_carry_n_1 : STD_LOGIC;
  signal cnt0_carry_n_2 : STD_LOGIC;
  signal cnt0_carry_n_3 : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[30]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[27]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[28]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[29]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[30]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal in4 : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cnt0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_2\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "scadere:0011,verifsigna:0100,shiftare:0010,init:0001,startst:0000,verifc:0111,dec:0110,stop:1000,refacere:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "scadere:0011,verifsigna:0100,shiftare:0010,init:0001,startst:0000,verifc:0111,dec:0110,stop:1000,refacere:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "scadere:0011,verifsigna:0100,shiftare:0010,init:0001,startst:0000,verifc:0111,dec:0110,stop:1000,refacere:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "scadere:0011,verifsigna:0100,shiftare:0010,init:0001,startst:0000,verifc:0111,dec:0110,stop:1000,refacere:0101";
  attribute SOFT_HLUTNM of \Qout[6]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Qout[6]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \Qout[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Qout[7]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of Term_OBUF_inst_i_1 : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt0_carry__6\ : label is 35;
begin
  \FSM_sequential_state_reg[0]_0\ <= \^fsm_sequential_state_reg[0]_0\;
  \FSM_sequential_state_reg[2]_0\ <= \^fsm_sequential_state_reg[2]_0\;
  LoadA <= \^loada\;
  \T_1__3\ <= \^t_1__3\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03030301"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(0),
      I3 => SignA,
      I4 => state(1),
      O => \state__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A00FF00FF0022"
    )
        port map (
      I0 => state(2),
      I1 => SignA,
      I2 => \FSM_sequential_state[3]_i_3_n_0\,
      I3 => state(3),
      I4 => state(0),
      I5 => state(1),
      O => \state__0\(1)
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1320"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(1),
      I3 => state(2),
      O => \state__0\(2)
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF01FE"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => state(3),
      I4 => Start_IBUF,
      O => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \cnt_reg_n_0_[11]\,
      I1 => \cnt_reg_n_0_[10]\,
      I2 => \cnt_reg_n_0_[9]\,
      I3 => \cnt_reg_n_0_[8]\,
      O => \FSM_sequential_state[3]_i_10_n_0\
    );
\FSM_sequential_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_3_n_0\,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => state(3),
      O => \state__0\(3)
    );
\FSM_sequential_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_4_n_0\,
      I1 => \FSM_sequential_state[3]_i_5_n_0\,
      I2 => \cnt_reg_n_0_[17]\,
      I3 => \cnt_reg_n_0_[30]\,
      I4 => \cnt_reg_n_0_[28]\,
      I5 => \FSM_sequential_state[3]_i_6_n_0\,
      O => \FSM_sequential_state[3]_i_3_n_0\
    );
\FSM_sequential_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_7_n_0\,
      I1 => \cnt_reg_n_0_[1]\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[3]\,
      I4 => \cnt_reg_n_0_[2]\,
      I5 => \FSM_sequential_state[3]_i_8_n_0\,
      O => \FSM_sequential_state[3]_i_4_n_0\
    );
\FSM_sequential_state[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_reg_n_0_[27]\,
      I1 => \cnt_reg_n_0_[24]\,
      I2 => \cnt_reg_n_0_[29]\,
      I3 => \cnt_reg_n_0_[26]\,
      O => \FSM_sequential_state[3]_i_5_n_0\
    );
\FSM_sequential_state[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \cnt_reg_n_0_[18]\,
      I1 => \cnt_reg_n_0_[21]\,
      I2 => \cnt_reg_n_0_[16]\,
      I3 => \cnt_reg_n_0_[19]\,
      I4 => \FSM_sequential_state[3]_i_9_n_0\,
      O => \FSM_sequential_state[3]_i_6_n_0\
    );
\FSM_sequential_state[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \cnt_reg_n_0_[7]\,
      I1 => \cnt_reg_n_0_[6]\,
      I2 => \cnt_reg_n_0_[5]\,
      I3 => \cnt_reg_n_0_[4]\,
      O => \FSM_sequential_state[3]_i_7_n_0\
    );
\FSM_sequential_state[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \cnt_reg_n_0_[12]\,
      I1 => \cnt_reg_n_0_[13]\,
      I2 => \cnt_reg_n_0_[14]\,
      I3 => \cnt_reg_n_0_[15]\,
      I4 => \FSM_sequential_state[3]_i_10_n_0\,
      O => \FSM_sequential_state[3]_i_8_n_0\
    );
\FSM_sequential_state[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_reg_n_0_[23]\,
      I1 => \cnt_reg_n_0_[20]\,
      I2 => \cnt_reg_n_0_[25]\,
      I3 => \cnt_reg_n_0_[22]\,
      O => \FSM_sequential_state[3]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => SR(0),
      D => \state__0\(0),
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => SR(0),
      D => \state__0\(1),
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => SR(0),
      D => \state__0\(2),
      Q => state(2)
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => SR(0),
      D => \state__0\(3),
      Q => state(3)
    );
\Qout[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C33CAAAA3CC3AAAA"
    )
        port map (
      I0 => Q(7),
      I1 => ManB_IBUF(0),
      I2 => \^fsm_sequential_state_reg[0]_0\,
      I3 => \^fsm_sequential_state_reg[2]_0\,
      I4 => \^loada\,
      I5 => \Qout_reg[7]\(0),
      O => D(0)
    );
\Qout[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20EF"
    )
        port map (
      I0 => ManA_IBUF(0),
      I1 => state(1),
      I2 => state(0),
      I3 => SignA,
      O => \FSM_sequential_state_reg[1]_0\(0)
    );
\Qout[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(3),
      I3 => state(0),
      O => \^fsm_sequential_state_reg[2]_0\
    );
\Qout[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA3A3ACA3ACACA3A"
    )
        port map (
      I0 => \Qout_reg[7]\(0),
      I1 => \^t_1__3\,
      I2 => \^loada\,
      I3 => \^fsm_sequential_state_reg[0]_0\,
      I4 => ManB_IBUF(1),
      I5 => \Qout_reg[7]\(1),
      O => D(1)
    );
\Qout[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => ManA_IBUF(1),
      I1 => state(1),
      I2 => state(0),
      I3 => Q(0),
      O => \FSM_sequential_state_reg[1]_0\(1)
    );
\Qout[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888D8888888888"
    )
        port map (
      I0 => ManB_IBUF(0),
      I1 => \Qout_reg[7]\(0),
      I2 => state(2),
      I3 => state(1),
      I4 => state(3),
      I5 => state(0),
      O => \^t_1__3\
    );
\Qout[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => ManA_IBUF(2),
      I1 => state(1),
      I2 => state(0),
      I3 => Q(1),
      O => \FSM_sequential_state_reg[1]_0\(2)
    );
\Qout[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => ManA_IBUF(3),
      I1 => state(1),
      I2 => state(0),
      I3 => Q(2),
      O => \FSM_sequential_state_reg[1]_0\(3)
    );
\Qout[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => ManA_IBUF(4),
      I1 => state(1),
      I2 => state(0),
      I3 => Q(3),
      O => \FSM_sequential_state_reg[1]_0\(4)
    );
\Qout[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => ManA_IBUF(5),
      I1 => state(1),
      I2 => state(0),
      I3 => Q(4),
      O => \FSM_sequential_state_reg[1]_0\(5)
    );
\Qout[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => ManA_IBUF(6),
      I1 => state(1),
      I2 => state(0),
      I3 => Q(5),
      O => \FSM_sequential_state_reg[1]_0\(6)
    );
\Qout[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0220"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(1),
      I3 => state(2),
      O => \^loada\
    );
\Qout[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(1),
      I3 => state(2),
      O => \^fsm_sequential_state_reg[0]_0\
    );
\Qout[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0012"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(1),
      I3 => state(2),
      O => E(0)
    );
\Qout[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0604"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(3),
      I3 => state(0),
      O => \FSM_sequential_state_reg[2]_1\(0)
    );
\Qout[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => ManA_IBUF(7),
      I1 => state(1),
      I2 => state(0),
      I3 => Q(6),
      O => \FSM_sequential_state_reg[1]_0\(7)
    );
\Qout[7]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBF0880"
    )
        port map (
      I0 => SignA,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => \Qout_reg[7]\(2),
      O => D(2)
    );
Term_OBUF_inst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => state(0),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      O => Term_OBUF
    );
cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt0_carry_n_0,
      CO(2) => cnt0_carry_n_1,
      CO(1) => cnt0_carry_n_2,
      CO(0) => cnt0_carry_n_3,
      CYINIT => \cnt_reg_n_0_[0]\,
      DI(3) => \cnt_reg_n_0_[4]\,
      DI(2) => \cnt_reg_n_0_[3]\,
      DI(1) => \cnt_reg_n_0_[2]\,
      DI(0) => \cnt_reg_n_0_[1]\,
      O(3 downto 0) => in4(4 downto 1),
      S(3) => cnt0_carry_i_1_n_0,
      S(2) => cnt0_carry_i_2_n_0,
      S(1) => cnt0_carry_i_3_n_0,
      S(0) => cnt0_carry_i_4_n_0
    );
\cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt0_carry_n_0,
      CO(3) => \cnt0_carry__0_n_0\,
      CO(2) => \cnt0_carry__0_n_1\,
      CO(1) => \cnt0_carry__0_n_2\,
      CO(0) => \cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_reg_n_0_[8]\,
      DI(2) => \cnt_reg_n_0_[7]\,
      DI(1) => \cnt_reg_n_0_[6]\,
      DI(0) => \cnt_reg_n_0_[5]\,
      O(3 downto 0) => in4(8 downto 5),
      S(3) => \cnt0_carry__0_i_1_n_0\,
      S(2) => \cnt0_carry__0_i_2_n_0\,
      S(1) => \cnt0_carry__0_i_3_n_0\,
      S(0) => \cnt0_carry__0_i_4_n_0\
    );
\cnt0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[8]\,
      O => \cnt0_carry__0_i_1_n_0\
    );
\cnt0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[7]\,
      O => \cnt0_carry__0_i_2_n_0\
    );
\cnt0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[6]\,
      O => \cnt0_carry__0_i_3_n_0\
    );
\cnt0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[5]\,
      O => \cnt0_carry__0_i_4_n_0\
    );
\cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__0_n_0\,
      CO(3) => \cnt0_carry__1_n_0\,
      CO(2) => \cnt0_carry__1_n_1\,
      CO(1) => \cnt0_carry__1_n_2\,
      CO(0) => \cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_reg_n_0_[12]\,
      DI(2) => \cnt_reg_n_0_[11]\,
      DI(1) => \cnt_reg_n_0_[10]\,
      DI(0) => \cnt_reg_n_0_[9]\,
      O(3 downto 0) => in4(12 downto 9),
      S(3) => \cnt0_carry__1_i_1_n_0\,
      S(2) => \cnt0_carry__1_i_2_n_0\,
      S(1) => \cnt0_carry__1_i_3_n_0\,
      S(0) => \cnt0_carry__1_i_4_n_0\
    );
\cnt0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[12]\,
      O => \cnt0_carry__1_i_1_n_0\
    );
\cnt0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[11]\,
      O => \cnt0_carry__1_i_2_n_0\
    );
\cnt0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[10]\,
      O => \cnt0_carry__1_i_3_n_0\
    );
\cnt0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[9]\,
      O => \cnt0_carry__1_i_4_n_0\
    );
\cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__1_n_0\,
      CO(3) => \cnt0_carry__2_n_0\,
      CO(2) => \cnt0_carry__2_n_1\,
      CO(1) => \cnt0_carry__2_n_2\,
      CO(0) => \cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_reg_n_0_[16]\,
      DI(2) => \cnt_reg_n_0_[15]\,
      DI(1) => \cnt_reg_n_0_[14]\,
      DI(0) => \cnt_reg_n_0_[13]\,
      O(3 downto 0) => in4(16 downto 13),
      S(3) => \cnt0_carry__2_i_1_n_0\,
      S(2) => \cnt0_carry__2_i_2_n_0\,
      S(1) => \cnt0_carry__2_i_3_n_0\,
      S(0) => \cnt0_carry__2_i_4_n_0\
    );
\cnt0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[16]\,
      O => \cnt0_carry__2_i_1_n_0\
    );
\cnt0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[15]\,
      O => \cnt0_carry__2_i_2_n_0\
    );
\cnt0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[14]\,
      O => \cnt0_carry__2_i_3_n_0\
    );
\cnt0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[13]\,
      O => \cnt0_carry__2_i_4_n_0\
    );
\cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__2_n_0\,
      CO(3) => \cnt0_carry__3_n_0\,
      CO(2) => \cnt0_carry__3_n_1\,
      CO(1) => \cnt0_carry__3_n_2\,
      CO(0) => \cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_reg_n_0_[20]\,
      DI(2) => \cnt_reg_n_0_[19]\,
      DI(1) => \cnt_reg_n_0_[18]\,
      DI(0) => \cnt_reg_n_0_[17]\,
      O(3 downto 0) => in4(20 downto 17),
      S(3) => \cnt0_carry__3_i_1_n_0\,
      S(2) => \cnt0_carry__3_i_2_n_0\,
      S(1) => \cnt0_carry__3_i_3_n_0\,
      S(0) => \cnt0_carry__3_i_4_n_0\
    );
\cnt0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[20]\,
      O => \cnt0_carry__3_i_1_n_0\
    );
\cnt0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[19]\,
      O => \cnt0_carry__3_i_2_n_0\
    );
\cnt0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[18]\,
      O => \cnt0_carry__3_i_3_n_0\
    );
\cnt0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[17]\,
      O => \cnt0_carry__3_i_4_n_0\
    );
\cnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__3_n_0\,
      CO(3) => \cnt0_carry__4_n_0\,
      CO(2) => \cnt0_carry__4_n_1\,
      CO(1) => \cnt0_carry__4_n_2\,
      CO(0) => \cnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_reg_n_0_[24]\,
      DI(2) => \cnt_reg_n_0_[23]\,
      DI(1) => \cnt_reg_n_0_[22]\,
      DI(0) => \cnt_reg_n_0_[21]\,
      O(3 downto 0) => in4(24 downto 21),
      S(3) => \cnt0_carry__4_i_1_n_0\,
      S(2) => \cnt0_carry__4_i_2_n_0\,
      S(1) => \cnt0_carry__4_i_3_n_0\,
      S(0) => \cnt0_carry__4_i_4_n_0\
    );
\cnt0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[24]\,
      O => \cnt0_carry__4_i_1_n_0\
    );
\cnt0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[23]\,
      O => \cnt0_carry__4_i_2_n_0\
    );
\cnt0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[22]\,
      O => \cnt0_carry__4_i_3_n_0\
    );
\cnt0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[21]\,
      O => \cnt0_carry__4_i_4_n_0\
    );
\cnt0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__4_n_0\,
      CO(3) => \cnt0_carry__5_n_0\,
      CO(2) => \cnt0_carry__5_n_1\,
      CO(1) => \cnt0_carry__5_n_2\,
      CO(0) => \cnt0_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_reg_n_0_[28]\,
      DI(2) => \cnt_reg_n_0_[27]\,
      DI(1) => \cnt_reg_n_0_[26]\,
      DI(0) => \cnt_reg_n_0_[25]\,
      O(3 downto 0) => in4(28 downto 25),
      S(3) => \cnt0_carry__5_i_1_n_0\,
      S(2) => \cnt0_carry__5_i_2_n_0\,
      S(1) => \cnt0_carry__5_i_3_n_0\,
      S(0) => \cnt0_carry__5_i_4_n_0\
    );
\cnt0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[28]\,
      O => \cnt0_carry__5_i_1_n_0\
    );
\cnt0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[27]\,
      O => \cnt0_carry__5_i_2_n_0\
    );
\cnt0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[26]\,
      O => \cnt0_carry__5_i_3_n_0\
    );
\cnt0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[25]\,
      O => \cnt0_carry__5_i_4_n_0\
    );
\cnt0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__5_n_0\,
      CO(3 downto 1) => \NLW_cnt0_carry__6_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \cnt0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \cnt_reg_n_0_[29]\,
      O(3 downto 2) => \NLW_cnt0_carry__6_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => in4(30 downto 29),
      S(3 downto 2) => B"00",
      S(1) => \cnt0_carry__6_i_1_n_0\,
      S(0) => \cnt0_carry__6_i_2_n_0\
    );
\cnt0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[30]\,
      O => \cnt0_carry__6_i_1_n_0\
    );
\cnt0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[29]\,
      O => \cnt0_carry__6_i_2_n_0\
    );
cnt0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[4]\,
      O => cnt0_carry_i_1_n_0
    );
cnt0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[3]\,
      O => cnt0_carry_i_2_n_0
    );
cnt0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[2]\,
      O => cnt0_carry_i_3_n_0
    );
cnt0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      O => cnt0_carry_i_4_n_0
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => SR(0),
      I1 => state(0),
      I2 => state(1),
      I3 => state(3),
      I4 => state(2),
      O => \cnt[30]_i_1_n_0\
    );
\cnt[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000108"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(3),
      I3 => state(0),
      I4 => SR(0),
      O => cnt0
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"32FF3200"
    )
        port map (
      I0 => in4(3),
      I1 => state(3),
      I2 => state(0),
      I3 => cnt0,
      I4 => \cnt_reg_n_0_[3]\,
      O => \cnt[3]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => \cnt[0]_i_1_n_0\,
      Q => \cnt_reg_n_0_[0]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(10),
      Q => \cnt_reg_n_0_[10]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(11),
      Q => \cnt_reg_n_0_[11]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(12),
      Q => \cnt_reg_n_0_[12]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(13),
      Q => \cnt_reg_n_0_[13]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(14),
      Q => \cnt_reg_n_0_[14]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(15),
      Q => \cnt_reg_n_0_[15]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(16),
      Q => \cnt_reg_n_0_[16]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(17),
      Q => \cnt_reg_n_0_[17]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(18),
      Q => \cnt_reg_n_0_[18]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(19),
      Q => \cnt_reg_n_0_[19]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(1),
      Q => \cnt_reg_n_0_[1]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(20),
      Q => \cnt_reg_n_0_[20]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(21),
      Q => \cnt_reg_n_0_[21]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(22),
      Q => \cnt_reg_n_0_[22]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(23),
      Q => \cnt_reg_n_0_[23]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(24),
      Q => \cnt_reg_n_0_[24]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(25),
      Q => \cnt_reg_n_0_[25]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(26),
      Q => \cnt_reg_n_0_[26]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(27),
      Q => \cnt_reg_n_0_[27]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(28),
      Q => \cnt_reg_n_0_[28]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(29),
      Q => \cnt_reg_n_0_[29]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(2),
      Q => \cnt_reg_n_0_[2]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(30),
      Q => \cnt_reg_n_0_[30]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => \cnt[3]_i_1_n_0\,
      Q => \cnt_reg_n_0_[3]\,
      R => '0'
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(4),
      Q => \cnt_reg_n_0_[4]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(5),
      Q => \cnt_reg_n_0_[5]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(6),
      Q => \cnt_reg_n_0_[6]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(7),
      Q => \cnt_reg_n_0_[7]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(8),
      Q => \cnt_reg_n_0_[8]\,
      R => \cnt[30]_i_1_n_0\
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => cnt0,
      D => in4(9),
      Q => \cnt_reg_n_0_[9]\,
      R => \cnt[30]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_depl_stg is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SignA : out STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    LoadA : in STD_LOGIC;
    \Qout_reg[2]_0\ : in STD_LOGIC;
    ManB_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \T_1__3\ : in STD_LOGIC;
    \Qout_reg[2]_1\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Clk_IBUF_BUFG : in STD_LOGIC
  );
end reg_depl_stg;

architecture STRUCTURE of reg_depl_stg is
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal \suma/T_2__3\ : STD_LOGIC;
  signal \suma/T_3__3\ : STD_LOGIC;
  signal \suma/T_4__3\ : STD_LOGIC;
  signal \suma/T_5__3\ : STD_LOGIC;
  signal \suma/T_6__3\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4\ : label is "soft_lutpair0";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEBEBAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_3_n_0\,
      I1 => ManB_IBUF(5),
      I2 => \Qout_reg[2]_0\,
      I3 => \^q\(5),
      I4 => \suma/T_5__3\,
      I5 => \FSM_sequential_state[1]_i_4_n_0\,
      O => SignA
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F48F8004"
    )
        port map (
      I0 => ManB_IBUF(6),
      I1 => \^q\(6),
      I2 => \Qout_reg[2]_0\,
      I3 => ManB_IBUF(7),
      I4 => \^q\(7),
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EDEDE00D"
    )
        port map (
      I0 => ManB_IBUF(7),
      I1 => \^q\(7),
      I2 => \Qout_reg[2]_0\,
      I3 => ManB_IBUF(6),
      I4 => \^q\(6),
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\Qout[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA3A3ACA3ACACA3A"
    )
        port map (
      I0 => \^q\(1),
      I1 => \suma/T_2__3\,
      I2 => LoadA,
      I3 => \Qout_reg[2]_0\,
      I4 => ManB_IBUF(2),
      I5 => \^q\(2),
      O => p_1_in(2)
    );
\Qout[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEDDE84DE84D8844"
    )
        port map (
      I0 => ManB_IBUF(1),
      I1 => \^q\(1),
      I2 => ManB_IBUF(0),
      I3 => \Qout_reg[2]_0\,
      I4 => \^q\(0),
      I5 => \Qout_reg[2]_1\,
      O => \suma/T_2__3\
    );
\Qout[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA3A3ACA3ACACA3A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \suma/T_3__3\,
      I2 => LoadA,
      I3 => \Qout_reg[2]_0\,
      I4 => ManB_IBUF(3),
      I5 => \^q\(3),
      O => p_1_in(3)
    );
\Qout[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEDDE84DE84D8844"
    )
        port map (
      I0 => ManB_IBUF(2),
      I1 => \^q\(2),
      I2 => ManB_IBUF(1),
      I3 => \Qout_reg[2]_0\,
      I4 => \^q\(1),
      I5 => \T_1__3\,
      O => \suma/T_3__3\
    );
\Qout[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA3A3ACA3ACACA3A"
    )
        port map (
      I0 => \^q\(3),
      I1 => \suma/T_4__3\,
      I2 => LoadA,
      I3 => \Qout_reg[2]_0\,
      I4 => ManB_IBUF(4),
      I5 => \^q\(4),
      O => p_1_in(4)
    );
\Qout[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEDDE84DE84D8844"
    )
        port map (
      I0 => ManB_IBUF(3),
      I1 => \^q\(3),
      I2 => ManB_IBUF(2),
      I3 => \Qout_reg[2]_0\,
      I4 => \^q\(2),
      I5 => \suma/T_2__3\,
      O => \suma/T_4__3\
    );
\Qout[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA3A3ACA3ACACA3A"
    )
        port map (
      I0 => \^q\(4),
      I1 => \suma/T_5__3\,
      I2 => LoadA,
      I3 => \Qout_reg[2]_0\,
      I4 => ManB_IBUF(5),
      I5 => \^q\(5),
      O => p_1_in(5)
    );
\Qout[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEDDE84DE84D8844"
    )
        port map (
      I0 => ManB_IBUF(4),
      I1 => \^q\(4),
      I2 => ManB_IBUF(3),
      I3 => \Qout_reg[2]_0\,
      I4 => \^q\(3),
      I5 => \suma/T_3__3\,
      O => \suma/T_5__3\
    );
\Qout[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA3A3ACA3ACACA3A"
    )
        port map (
      I0 => \^q\(5),
      I1 => \suma/T_6__3\,
      I2 => LoadA,
      I3 => \Qout_reg[2]_0\,
      I4 => ManB_IBUF(6),
      I5 => \^q\(6),
      O => p_1_in(6)
    );
\Qout[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEDDE84DE84D8844"
    )
        port map (
      I0 => ManB_IBUF(5),
      I1 => \^q\(5),
      I2 => ManB_IBUF(4),
      I3 => \Qout_reg[2]_0\,
      I4 => \^q\(4),
      I5 => \suma/T_4__3\,
      O => \suma/T_6__3\
    );
\Qout_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => SR(0)
    );
\Qout_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      R => SR(0)
    );
\Qout_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(2),
      Q => \^q\(2),
      R => SR(0)
    );
\Qout_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(3),
      Q => \^q\(3),
      R => SR(0)
    );
\Qout_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(4),
      Q => \^q\(4),
      R => SR(0)
    );
\Qout_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(5),
      Q => \^q\(5),
      R => SR(0)
    );
\Qout_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => p_1_in(6),
      Q => \^q\(6),
      R => SR(0)
    );
\Qout_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(2),
      Q => \^q\(7),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_depl_stg_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Clk_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_depl_stg_0 : entity is "reg_depl_stg";
end reg_depl_stg_0;

architecture STRUCTURE of reg_depl_stg_0 is
begin
\Qout_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\Qout_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\Qout_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\Qout_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
\Qout_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(4),
      Q => Q(4),
      R => SR(0)
    );
\Qout_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(5),
      Q => Q(5),
      R => SR(0)
    );
\Qout_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(6),
      Q => Q(6),
      R => SR(0)
    );
\Qout_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => D(7),
      Q => Q(7),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity divider is
  port (
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Start : in STD_LOGIC;
    ManA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ManB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    isException : out STD_LOGIC;
    Term : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of divider : entity is true;
  attribute n : integer;
  attribute n of divider : entity is 8;
end divider;

architecture STRUCTURE of divider is
  signal A_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Clk_IBUF : STD_LOGIC;
  signal Clk_IBUF_BUFG : STD_LOGIC;
  signal LoadA : STD_LOGIC;
  signal ManA_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ManB_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Q_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Rst_IBUF : STD_LOGIC;
  signal SignA : STD_LOGIC;
  signal Start_IBUF : STD_LOGIC;
  signal Term_OBUF : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \suma/T_1__3\ : STD_LOGIC;
  signal uc_n_1 : STD_LOGIC;
  signal uc_n_10 : STD_LOGIC;
  signal uc_n_11 : STD_LOGIC;
  signal uc_n_12 : STD_LOGIC;
  signal uc_n_13 : STD_LOGIC;
  signal uc_n_14 : STD_LOGIC;
  signal uc_n_15 : STD_LOGIC;
  signal uc_n_16 : STD_LOGIC;
  signal uc_n_17 : STD_LOGIC;
  signal uc_n_5 : STD_LOGIC;
  signal uc_n_6 : STD_LOGIC;
  signal uc_n_9 : STD_LOGIC;
begin
\A_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_OBUF(0),
      O => A(0)
    );
\A_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_OBUF(1),
      O => A(1)
    );
\A_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_OBUF(2),
      O => A(2)
    );
\A_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_OBUF(3),
      O => A(3)
    );
\A_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_OBUF(4),
      O => A(4)
    );
\A_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_OBUF(5),
      O => A(5)
    );
\A_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_OBUF(6),
      O => A(6)
    );
\A_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => A_OBUF(7),
      O => A(7)
    );
Clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => Clk_IBUF,
      O => Clk_IBUF_BUFG
    );
Clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Clk,
      O => Clk_IBUF
    );
\ManA_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ManA(0),
      O => ManA_IBUF(0)
    );
\ManA_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ManA(1),
      O => ManA_IBUF(1)
    );
\ManA_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ManA(2),
      O => ManA_IBUF(2)
    );
\ManA_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ManA(3),
      O => ManA_IBUF(3)
    );
\ManA_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ManA(4),
      O => ManA_IBUF(4)
    );
\ManA_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ManA(5),
      O => ManA_IBUF(5)
    );
\ManA_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ManA(6),
      O => ManA_IBUF(6)
    );
\ManA_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ManA(7),
      O => ManA_IBUF(7)
    );
\ManB_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ManB(0),
      O => ManB_IBUF(0)
    );
\ManB_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ManB(1),
      O => ManB_IBUF(1)
    );
\ManB_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ManB(2),
      O => ManB_IBUF(2)
    );
\ManB_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ManB(3),
      O => ManB_IBUF(3)
    );
\ManB_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ManB(4),
      O => ManB_IBUF(4)
    );
\ManB_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ManB(5),
      O => ManB_IBUF(5)
    );
\ManB_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ManB(6),
      O => ManB_IBUF(6)
    );
\ManB_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ManB(7),
      O => ManB_IBUF(7)
    );
\Q_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(0),
      O => Q(0)
    );
\Q_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(1),
      O => Q(1)
    );
\Q_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(2),
      O => Q(2)
    );
\Q_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(3),
      O => Q(3)
    );
\Q_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(4),
      O => Q(4)
    );
\Q_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(5),
      O => Q(5)
    );
\Q_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(6),
      O => Q(6)
    );
\Q_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Q_OBUF(7),
      O => Q(7)
    );
Rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Rst,
      O => Rst_IBUF
    );
Start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Start,
      O => Start_IBUF
    );
Term_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Term_OBUF,
      O => Term
    );
isException_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => isException
    );
regDepl1: entity work.reg_depl_stg
     port map (
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      D(2) => p_1_in(7),
      D(1 downto 0) => p_1_in(1 downto 0),
      E(0) => uc_n_9,
      LoadA => LoadA,
      ManB_IBUF(7 downto 0) => ManB_IBUF(7 downto 0),
      Q(7 downto 0) => A_OBUF(7 downto 0),
      \Qout_reg[2]_0\ => uc_n_5,
      \Qout_reg[2]_1\ => uc_n_6,
      SR(0) => Rst_IBUF,
      SignA => SignA,
      \T_1__3\ => \suma/T_1__3\
    );
regDepl2: entity work.reg_depl_stg_0
     port map (
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      D(7) => uc_n_10,
      D(6) => uc_n_11,
      D(5) => uc_n_12,
      D(4) => uc_n_13,
      D(3) => uc_n_14,
      D(2) => uc_n_15,
      D(1) => uc_n_16,
      D(0) => uc_n_17,
      E(0) => uc_n_1,
      Q(7 downto 0) => Q_OBUF(7 downto 0),
      SR(0) => Rst_IBUF
    );
uc: entity work.UC
     port map (
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      D(2) => p_1_in(7),
      D(1 downto 0) => p_1_in(1 downto 0),
      E(0) => uc_n_1,
      \FSM_sequential_state_reg[0]_0\ => uc_n_5,
      \FSM_sequential_state_reg[1]_0\(7) => uc_n_10,
      \FSM_sequential_state_reg[1]_0\(6) => uc_n_11,
      \FSM_sequential_state_reg[1]_0\(5) => uc_n_12,
      \FSM_sequential_state_reg[1]_0\(4) => uc_n_13,
      \FSM_sequential_state_reg[1]_0\(3) => uc_n_14,
      \FSM_sequential_state_reg[1]_0\(2) => uc_n_15,
      \FSM_sequential_state_reg[1]_0\(1) => uc_n_16,
      \FSM_sequential_state_reg[1]_0\(0) => uc_n_17,
      \FSM_sequential_state_reg[2]_0\ => uc_n_6,
      \FSM_sequential_state_reg[2]_1\(0) => uc_n_9,
      LoadA => LoadA,
      ManA_IBUF(7 downto 0) => ManA_IBUF(7 downto 0),
      ManB_IBUF(1 downto 0) => ManB_IBUF(1 downto 0),
      Q(7 downto 0) => Q_OBUF(7 downto 0),
      \Qout_reg[7]\(2) => A_OBUF(6),
      \Qout_reg[7]\(1 downto 0) => A_OBUF(1 downto 0),
      SR(0) => Rst_IBUF,
      SignA => SignA,
      Start_IBUF => Start_IBUF,
      \T_1__3\ => \suma/T_1__3\,
      Term_OBUF => Term_OBUF
    );
end STRUCTURE;

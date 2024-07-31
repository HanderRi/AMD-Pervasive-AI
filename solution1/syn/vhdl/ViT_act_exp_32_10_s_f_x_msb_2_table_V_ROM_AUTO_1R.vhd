-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ViT_act_exp_32_10_s_f_x_msb_2_table_V_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 46; 
             AddressWidth     : integer := 8; 
             AddressRange    : integer := 256
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of ViT_act_exp_32_10_s_f_x_msb_2_table_V_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "0000000000000000000000000000000000000000000000", 1 => "0000000000000000100000000000010101010101100000", 2 => "0000000000000010000000000010101010101101010101", 3 => "0000000000000100100000001001000000001101100000", 
    4 => "0000000000001000000000010101010110000000000001", 5 => "0000000000001100100000101001101100010010111000", 6 => "0000000000010010000001001000000011011000001000", 7 => "0000000000011000100001110010011011100101110001", 
    8 => "0000000000100000000010101010110101010101110111", 9 => "0000000000101000100011110011010001000110011101", 10 => "0000000000110010000101001101101111011001101000", 11 => "0000000000111100100110111100010000110101011101", 
    12 => "0000000001001000001001000000110110000100000011", 13 => "0000000001010100101011011101011111110011100011", 14 => "0000000001100010001110010100001110110110000110", 15 => "0000000001110000110001100111000100000001110111", 
    16 => "0000000010000000010101011000000000010001000101", 17 => "0000000010010000111001101001000100100001111110", 18 => "0000000010100010011110011100010001110110110011", 19 => "0000000010110101000011110011101001010101110111", 
    20 => "0000000011001000101001110001001100001001100000", 21 => "0000000011011101010000010110111011100000000101", 22 => "0000000011110010110111100110111000101100000001", 23 => "0000000100001001011111100011000101000011110010", 
    24 => "0000000100100001001000001101100010000001110110", 25 => "0000000100111001110001101000010001000100110001", 26 => "0000000101010011011011110101010011101111001000", 27 => "0000000101101110000110110110101011100111100011", 
    28 => "0000000110001001110010101110011010011000110000", 29 => "0000000110100110011111011110100001110001011101", 30 => "0000000111000100001101001001000011100100011110", 31 => "0000000111100010111011110000000001101000101001", 
    32 => "0000001000000010101011010101011101111000111001", 33 => "0000001000100011011011111011011010010100001011", 34 => "0000001001000101001101100011111000111101100011", 35 => "0000001001101000000000010000111011111100000111", 
    36 => "0000001010001011110100000100100101011011000010", 37 => "0000001010110000101001000000110111101001100011", 38 => "0000001011010110011111000111110100111010111101", 39 => "0000001011111101010110011011011111100110101010", 
    40 => "0000001100100101001110111101111010001000000110", 41 => "0000001101001110001000110001000110111110110100", 42 => "0000001101111000000011110111001000101110011011", 43 => "0000001110100011000000010010000001111110100111", 
    44 => "0000001111001110111110000011110101011011001010", 45 => "0000001111111011111101001110100101110011111010", 46 => "0000010000101001111101110100010101111100110110", 47 => "0000010001011000111111110111001000101101111111", 
    48 => "0000010010001001000011011001000001000011011101", 49 => "0000010010111010001000011100000001111101011110", 50 => "0000010011101100001111000010001110100000010111", 51 => "0000010100011111010111001101101001110100100010", 
    52 => "0000010101010011100001000000010111000110011111", 53 => "0000010110001000101100011100011001100110110111", 54 => "0000010110111110111001100011110100101010010110", 55 => "0000010111110110001000011000101011101001110010", 
    56 => "0000011000101110011000111101000010000010000100", 57 => "0000011001100111101011010010111011010100010001", 58 => "0000011010100001111111011100011011000101100001", 59 => "0000011011011101010101011011100100111111000100", 
    60 => "0000011100011001101101010010011100101110010011", 61 => "0000011101010111000111000011000110000100101101", 62 => "0000011110010101100010101111100100110111111010", 63 => "0000011111010101000000011001111101000001100111", 
    64 => "0000100000010101100000000100010010011111101100", 65 => "0000100001010111000001110000101001010100000111", 66 => "0000100010011001100101100001000101100101000000", 67 => "0000100011011101001011010111101011011100100100", 
    68 => "0000100100100001110011010110011111001001001100", 69 => "0000100101100111011101011111100100111101010111", 70 => "0000100110101110001001110101000001001111101111", 71 => "0000100111110101111000011000111000011011000100", 
    72 => "0000101000111110101001001101001110111110010000", 73 => "0000101010001000011100010100001001011100010111", 74 => "0000101011010011010001101111101100011100100110", 75 => "0000101100011111001001100001111100101010010010", 
    76 => "0000101101101100000011101100111110110100111010", 77 => "0000101110111010000000010010110111110000000111", 78 => "0000110000001000111111010101101100010011101100", 79 => "0000110001011001000000110111100001011011100011", 
    80 => "0000110010101010000100111010011100000111110101", 81 => "0000110011111100001011100000100001011100110000", 82 => "0000110101001111010100101011110110100010110000", 83 => "0000110110100011100000011110100000100110011001", 
    84 => "0000110111111000101110111010100100111000011001", 85 => "0000111001001111000000000010001000101101101100", 86 => "0000111010100110010011110111010001011111010101", 87 => "0000111011111110101010011100000100101010100011", 
    88 => "0000111101011000000011110010100111110000110010", 89 => "0000111110110010011111111101000000010111100110", 90 => "0001000000001101111110111101010100001000110000", 91 => "0001000001101010100000110101101000110010001100", 
    92 => "0001000011001000000101101000000100000110000010", 93 => "0001000100100110101101010110101011111010100101", 94 => "0001000110000110011000000011100110001010010100", 95 => "0001000111100111000101110000111000110011111001", 
    96 => "0001001001001000110110100000101001111010001011", 97 => "0001001010101011101010010100111111100100001110", 98 => "0001001100001111100001001111111111111101010001", 99 => "0001001101110100011011010011110001010100101111", 
    100 => "0001001111011010011000100010011001111110010000", 101 => "0001010001000001011000111110000000010001101010", 102 => "0001010010101001011100101000101010101010111111", 103 => "0001010100010010100011100100011111101010011100", 
    104 => "0001010101111100101101110011100101110100011110", 105 => "0001010111100111111011011000000011110001101110", 106 => "0001011001010100001100010100000000001111000010", 107 => "0001011011000001100000101001100001111101011101", 
    108 => "0001011100101111111000011010101111110010010001", 109 => "0001011110011111010011101001110000100110111110", 110 => "0001100000001111110010011000101011011001010000", 111 => "0001100010000001010100101001100111001011000010", 
    112 => "0001100011110011111010011110101011000010011101", 113 => "0001100101100111100011111001111110001001111000", 114 => "0001100111011100010000111101100111101111111010", 115 => "0001101001010010000001101011101111000111010101", 
    116 => "0001101011001000110110000110011011100111001111", 117 => "0001101101000000101110001111110100101010110111", 118 => "0001101110111001101010001010000001110001101111", 119 => "0001110000110011101001110111001010011111100110", 
    120 => "0001110010101110101101011001010110011100011011", 121 => "0001110100101010110100110010101101010100011100", 122 => "0001110110101000000000000101010110111000000111", 123 => "0001111000100110001111010011011010111100001001", 
    124 => "0001111010100101100010011111000001011001011111", 125 => "0001111100100101111001101010010010001101010110", 126 => "0001111110100111010100110111010101011001001010", 127 => "0010000000101001110100001000010011000010101000", 
    128 => "0010000010101101010111011111010011010011101101", 129 => "0010000100110001111110111110011110011010100111", 130 => "0010000110110111101010100111111100101001110011", 131 => "0010001000111110011010011101110110011000000001", 
    132 => "0010001011000110001110100010010100000000010000", 133 => "0010001101001111000110110111011110000001101111", 134 => "0010001111011001000011011111011101000000000000", 135 => "0010010001100100000100011100011001100010110110", 
    136 => "0010010011110000001001110000011100010110010101", 137 => "0010010101111101010011011101101110001010110010", 138 => "0010011000001011100001100110010111110100110011", 139 => "0010011010011010110100001100100010001101010010", 
    140 => "0010011100101011001011010010010110010001011000", 141 => "0010011110111100100110111001111101000010100010", 142 => "0010100001001111000111000101011111100110011110", 143 => "0010100011100010101011110111000111000111001110", 
    144 => "0010100101110111010101010000111100110011000100", 145 => "0010101000001101000011010101001001111100100110", 146 => "0010101010100011110110000101110111111010101101", 147 => "0010101100111011101101100101010000001000100010", 
    148 => "0010101111010100101001110101011100000101100101", 149 => "0010110001101110101010111000100101010101100110", 150 => "0010110100001001110000110000110101100000101010", 151 => "0010110110100101111011100000010110010011000111", 
    152 => "0010111001000011001011001001010001011101101010", 153 => "0010111011100001011111101101110000110101010000", 154 => "0010111110000000111001001111111110010011001100", 155 => "0011000000100001010111110010000011110101000100", 
    156 => "0011000011000010111011010110001011011100110010", 157 => "0011000101100101100011111110011111010000100100", 158 => "0011001000001001010001101101001001011010111110", 159 => "0011001010101110000100100100010100001010110101", 
    160 => "0011001101010011111100100110001001110011010110", 161 => "0011001111111010111001110100110100101100000000", 162 => "0011010010100010111100010010011111010000101000", 163 => "0011010101001100000100000001010100000001011001", 
    164 => "0011010111110110010001000011011101100010110001", 165 => "0011011010100001100011011011000110011101100100", 166 => "0011011101001101111011001010011001011110111100", 167 => "0011011111111011011000010011100001011000011000", 
    168 => "0011100010101001111010111000101000111111101100", 169 => "0011100101011001100010111011111011001111000011", 170 => "0011101000001010010000011111100011000100111101", 171 => "0011101010111100000011100101101011100100010000", 
    172 => "0011101101101110111100010000011111110100001000", 173 => "0011110000100010111010100010001011000000001001", 174 => "0011110011010111111110011100111000011000001011", 175 => "0011110110001110001000000010110011010000011110", 
    176 => "0011111001000101010111010110000111000001101001", 177 => "0011111011111101101100011000111111001000101000", 178 => "0011111110110111000111001101100111000110110000", 179 => "0100000001110001100111110110001010100001101100", 
    180 => "0100000100101101001110010100110101000011011111", 181 => "0100000111101001111010101011110010011010100010", 182 => "0100001010100111101100111101001110011001100111", 183 => "0100001101100110100101001011010100110111111000", 
    184 => "0100010000100110100011011000010001110000110100", 185 => "0100010011100111100111100110010001000100010110", 186 => "0100010110101001110001110111011110110110101101", 187 => "0100011001101101000010001110000111010000100011", 
    188 => "0100011100110001011000101100010110011110111001", 189 => "0100011111110110110101010100011000110011001010", 190 => "0100100010111101011000001000011010100011000111", 191 => "0100100110000101000001001010101000001000111100", 
    192 => "0100101001001101110000011101001110000011001101", 193 => "0100101100010111100110000010011000110100110111", 194 => "0100101111100010100001111100010101000101010001", 195 => "0100110010101110100100001101001111100000001010", 
    196 => "0100110101111011101100110111010100110101101100", 197 => "0100111001001001111011111100110001111010011000", 198 => "0100111100011001010001011111110011100111001100", 199 => "0100111111101001101101100010100110111001011101", 
    200 => "0101000010111011010000000111011000110010111100", 201 => "0101000110001101111001010000010110011001110011", 202 => "0101001001100001101000111111101100111000100110", 203 => "0101001100110110011111010111101001011110010101", 
    204 => "0101010000001100011100011010011001011110011001", 205 => "0101010011100011100000001010001010010000100110", 206 => "0101010110111011101010101001001001010001001011", 207 => "0101011010010100111011111001100100000000110011", 
    208 => "0101011101101111010011111101101000000100100010", 209 => "0101100001001010110010110111100011000101111000", 210 => "0101100100100111011000101001100010110010110001", 211 => "0101101000000101000101010101110100111101100101", 
    212 => "0101101011100011111000111110100111011101000101", 213 => "0101101111000011110011100110001000001100100001", 214 => "0101110010100100110101001110100101001011100100", 215 => "0101110110000110111101111010001100011110010010", 
    216 => "0101111001101010001101101011001100001101010000", 217 => "0101111101001110100100100011110010100101011101", 218 => "0110000000110100000010100110001101111000010011", 219 => "0110000100011010100111110100101100011011101100", 
    220 => "0110001000000010010100010001011100101001111011", 221 => "0110001011101011000111111110101101000001110100", 222 => "0110001111010101000010111110101100000110100100", 223 => "0110010011000000000101010011101000011111111000", 
    224 => "0110010110101100001110111111110000111001111001", 225 => "0110011010011001100000000101010100000101001101", 226 => "0110011110000111111000100110100000110110111010", 227 => "0110100001110111011000100101100110001000100001", 
    228 => "0110100101101000000000000100110010111000000010", 229 => "0110101001011001101111000110010110000111111100", 230 => "0110101101001100100101101100011110111111001001", 231 => "0110110001000000100011111001011100101001000101", 
    232 => "0110110100110101101001101111011110010101101001", 233 => "0110111000101011110111010000110011011001001100", 234 => "0110111100100011001100011111101011001100100011", 235 => "0111000000011011101001011110010101001101000101", 
    236 => "0111000100010101001110001111000000111100100100", 237 => "0111001000001111111010110011111110000001010100", 238 => "0111001100001011101111001111011100000110000111", 239 => "0111010000001000101011100011101010111010001111", 
    240 => "0111010100000110101111110010111010010001011110", 241 => "0111011000000101111011111111011010000100000100", 242 => "0111011100000110010000001011011010001110110001", 243 => "0111100000000111101100011001001010110010110111", 
    244 => "0111100100001010010000101010111011110110000111", 245 => "0111101000001101111101000010111101100010110010", 246 => "0111101100010010110001100011100000000111101001", 247 => "0111110000011000101110001110110011110111111110", 
    248 => "0111110100011111110011000111001001001011100100", 249 => "0111111000101000000000001110110000011110101111", 250 => "0111111100110001010101100111111010010010010010", 251 => "1000000000111011110011010100110111001011100100", 
    252 => "1000000101000111011001010111110111110100011100", 253 => "1000001001010100000111110011001100111011010001", 254 => "1000001101100001111110101001000111010010111110", 255 => "1000010001110000111101111011110111110010111101");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;


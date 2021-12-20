/*
author = "Vishal Thakur - malienist.medium.com"
date = "2021-12-20"
version = "1"
description = "Detects STOP Windows Ransomware"
info = "Generated from information extracted from the malware sample by manual analysis."
*/
rule stopStatic {   
  strings:
    $header = { 4d	5a }
    $str1 = { 9c	58	??	10	d8	39	53	43	d8	39	53	43	??	39	53	43 }
    $str2 = { b7	4f	cd	43	c3	39	53	43	b7	4f	f9	??	a3	39	53	43 } 
    $str3 = { 77	75	67	??	68	65	63	75	6a	69	6a	69	79	69	67	61 }
    $str4 = { 77	69	6e	69	62	61	6e	00	68	61	72	65	77	69	6e	69 }
    $str5 = { 6f	6e	75	6a	6f	??	65	79	61	72	00	00	5a	75	79	61 }
    $str6 = { 77	??	6b	6f	20	6d	6f	64	69	20	76	61	74	75	6a	75 }
    $str7 = { 69	79	61	6c	6f	67	69	00	46	75	76	61	76	61	6a	6f } 
    $str8 = { 63	75	73	??	78	75	76	75	63	65	74	69	6a	75	68	69 }
    $str9 = { 70	61	6d	69	??	61	6d	69	76	61	64	61	64	61	6d	69 }
    $str10 = { 66	??	5c	64	64	5c	76	63	74	6f	6f	6c	73	5c	63	72 }
    $str11 = { 74	5f	62	6c	64	5c	73	65	??	66	5f	78	38	36	5c	63 }
    $str12 = { 72	??	5c	73	72	63	5c	6f	6e	65	78	??	74	2e	63	?? }
    $str13 = { 48 61 74 61 7a 75 79 69 20 6a 75 62 6f 6b 20 79 69 62 2e 20 54 75 6d 61 6a 75 73 6f 20 6e 69 6e 69 74 6f 66 75 20 6c 65 6b 69 78 69 67 20 76 61 62 69 73 69 70 }
    $str14 = { 36 24 36 28 36 2c 36 30 36 34 36 38 36 3c 36 40 36 44 36 48 36 4c 36 50 36 54 36 58 36 5c 36 60 36 64 36 68 36 6c 36 70 36 74 36 78 36 7c 36 }
    $str15 = { 66 3a 5c 64 64 5c 76 63 74 6f 6f 6c 73 5c 63 72 74 5f 62 6c 64 5c 73 65 6c 66 5f 78 38 36 5c 63 72 74 5c 73 72 63 5c 74 69 64 74 61 62 6c 65 2e 63 }
    $str16 = { 78 6f 74 65 6d 6f 70 65 66 6f 62 65 6e 6f 6b 69 6b 6f 68 65 70 65 63 65 68 6f 6a 65 6e 69 6c 6f 70 61 72 65 6a 65 76 6f 7a 69 73 69 64 6f 7a 65 73 69 79 61 67 61 78 75 6d 6f 73 75 6c 65 6e 61 6b }
    $str17 = { 63 75 73 61 78 75 76 75 63 65 74 69 6a 75 68 69 70 61 6d 69 68 61 6d 69 76 61 64 61 64 61 6d 69 79 }
    $str18 = "%s%s%s%s%s%s%s%s%s%s%s%s" 
    $str19 = { 66 3a 5c 64 64 5c 76 63 74 6f 6f 6c 73 5c 63 72 74 }
    $str20 = { 78 38 36 5c 63 72 74 5c 73 72 63 5c 6d 62 63 74 79 70 65 2e 63 }
   
   condition: all of them
}

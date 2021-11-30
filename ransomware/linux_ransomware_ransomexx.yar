/*
author = "Vishal Thakur - malienist.medium.com"
date = "2021-11-30"
version = "1"
description = "Detects RansomExx Linux Ransomware"
info = "Generated from information extracted from the malware sample by manual analysis."
*/

rule ransomexxStatic {   
  strings:
    $header = { 7f 45 4c 46 02 }
    $email = { 66 72 61 6e 63 65 2e 65 69 67 73 40 70 72 6f 74 6f 6e 6d 61 69 6c 2e 63 6f 6d }
    $msg1 = { 53 74 75 64 79 20 74 68 69 73 20 6d 65 73 73 61 67 65 20 52 45 47 41 52 44 46 55 4c 4c 59 20 61 6e 64 20 63 61 6c 6c 20 61 64 6d 69 6e 69 73 74 72 61 74 6f 72 20 66 72 6f 6d 20 74 65 63 68 6e 69 63 61 6c 20 64 69 76 69 73 69 6f 6e }
    $msg2 = { 45 6e 63 72 79 70 74 65 64 20 66 69 6c 65 20 4d 55 53 54 20 4e 4f 54 20 68 61 76 65 20 72 69 63 68 20 64 61 74 61 }
    $msg3 = { 52 65 61 63 68 20 75 73 20 53 4f 4c 45 4c 59 20 69 66 20 79 6f 75 20 72 65 70 72 65 73 65 6e 74 20 61 6c 6c 20 61 66 66 65 63 74 65 64 20 6e 65 74 77 6f 72 6b }
    $msg4 = { 47 72 65 65 74 69 6e 67 73 20 45 49 47 53 49 }
    $msg5 = { 62 72 61 69 6e 70 6f 6f 6c }
    $msg6 = { 6d 62 65 64 74 6c 73 5f 61 65 73 5f 78 74 73 5f 64 65 63 6f 64 65 5f 6b 65 79 73 }

  condition:
    filesize < 270KB and 
    all of them
}

rule ransomexxCode {
  strings:
    $block1 = { ??	65	6d	6f	76	65	00	6f	70	65	6e	64	69	72	00	61	6c	61	??	6d	00	75	73	6c	65	65	70	00	66	77	72	69	74	65	00	66	72	65	61	64	00	67	65	74	74	69	6d	65	6f	66	64	61	79	00	72	65	6e	61	6d	65	00	72	65	61	64	64	69	72	36	34	00	5f	5f	63	78	61	5f	66	69	6e	61	6c	69	7a	65	00	73	79	73	63	61	6c	6c	00	6d	65	6d	6d	6f	76	65	00	66	6f	70	65	6e	36	34	00	73	74	??	63	6d	70	00	5f	5f	6c	69	62	63	5f	73 74	61	72	74	5f	6d	61	69	6e	00	66	65	??	??	6f	??	00	73	6e	70	72	69	6e	74	66	00	73	79	73	63	6f	6e	66	00	66	72	65	65	00	5f	5f	78	73	74	61	74	36	34	00	6c	69	62	70	74	68	72	65	61	64	2e	73	6f	2e	30	00	6c	69	62	63	2e	73	6f	2e	36	00	47	4c	49	42	43	5f	32	2e	32	2e	35	00	47	4c	49	42	43	5f	32	2e	33	2e	34	00	5f	5f	67	6d	6f	6e	5f	73	74	61	72	74	5f  5f }
    $block2 = { ??	54	4d	5f	64	65	??	65	67	69	73	74	65	??	54	4d	43	6c	6f	6e	65	54	61	62	6c	65	00	5f	49	54	4d	5f	72	65	67	69	73	74	65	72	54	4d	43	6c	6f	6e	65	54	61	62	6c	65	00	5f	5f	65	72	72	6e	6f	5f	6c	6f	63	61	74	69	6f	6e	00	70	74	68	72	65	61	64	5f	63	72	65	61	74	65	00	70	74	68	72	65	61	64	5f	6d	75	74	65	78	5f	6c	6f	63	6b	00	70	74	68	??	65	61	64	5f	6d	75	74	65	78	5f	75	6e	6c	6f	63	6b	00	73	??	??	63	70	79	00	67	6d	74	69	6d	65	5f	??	00	73	70	72	69	6e	74	66	00	73	72	61	6e	64	00	63	6c	6f	73	65	64	69	72	00	66	74	65	6c	6c 00	73	69	67	6e	61	6c	00	70	75	74	73	00	74	69	6d	65	00	70	75	74	63	68	61	72	00	66	67	65	74	73	00	73	63	68	65	64	5f	73	65	74	61	66	66	69	6e	69	74	79	00	63	61	6c	6c	6f	63	00	73	74	??	6c	65	6e	00	6d	65	6d	73	65	74	00	73	74	72	73	74	??	00	66	73	65	65	6b	00	6d	65	6d	63	6d	70	00	6d	65	6d	63	70	79	00	66	63	6c	6f	73	65	00	6d	61	6c	6c	6f	63	00	73	74	??	63	61 }
  condition:
    filesize < 270KB and 
    all of them
}

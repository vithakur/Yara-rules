/*
author = "Vishal Thakur - malienist.medium.com"
date = "2022-02-22"
version = "1"
description = "Detects Mirai"
info = "Generated from information extracted from the malware sample by manual analysis."
*/

rule miraiStatic {

  strings:
        str1={ /x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A/x38/xFJ/x93/xID/x9A }
        str2={ 42 6f 74 6e 65 74 20 4d 61 64 65 20 42 79 20 67 72 65 65 6b 2e 48 65 6c 69 6f 73 2c 20 61 6e 64 20 54 68 61 72 33 73 65 6c 6c 65 72 }
        str3={ 63 6f 6e 73 69 64 65 72 74 6f 67 6f 6f 66 66 6c 69 6e 65 74 79 76 6d }
        str4={ 59 6f 75 72 4d 69 63 72 6f 77 61 76 65 49 73 41 50 69 65 63 65 6f 66 53 68 69 74 }
        str5={ 4d 45 4c 54 45 44 4e 49 4e 4a 41 52 45 41 4c 5a }
        str6={ 3c 3d 32 33 30 31 36 37 34 35 2a 2b 28 29 2e 2f 2c 2d 6a 6b 68 69 6e 6f 6c 6d 62 5a }
        str7={ 44 24 24 6a 40 6a }
  condition:
        filesize < 270KB and
        all of them 
}

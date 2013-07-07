//Maya ASCII 2012 scene
//Name: bin001.ma
//Last modified: Sat, Jul 06, 2013 09:11:34 PM
//Codeset: 1252
requires maya "2012";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "001200000000-796618";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.15169240001451301 3.892833058762712 13.402415097927859 ;
	setAttr ".r" -type "double3" 166.46164727046539 -900.59999999956415 179.99999999999591 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 14.110181666961582;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 5.3425502777099609 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 4.0129087770658129 -0.33164535347651297 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 15.736572022460562;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "bin";
	setAttr ".rp" -type "double3" 0 2.2589238882064819 0 ;
	setAttr ".sp" -type "double3" 0 2.2589238882064819 0 ;
createNode mesh -n "binShape" -p "bin";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50001414120197296 0.49999997019767761 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "bin";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:163]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 566 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0.3125 0.39583334 0.3125
		 0.39583334 0.68843985 0.375 0.68843985 0.41666669 0.3125 0.41666669 0.68843985 0.43750003
		 0.3125 0.43750003 0.68843985 0.45833337 0.3125 0.45833337 0.68843985 0.47916672 0.3125
		 0.47916672 0.68843985 0.50000006 0.3125 0.50000006 0.68843985 0.52083337 0.3125 0.52083337
		 0.68843985 0.54166669 0.3125 0.54166669 0.68843985 0.5625 0.3125 0.5625 0.68843985
		 0.58333331 0.3125 0.58333331 0.68843985 0.60416663 0.3125 0.60416663 0.68843985 0.62499994
		 0.3125 0.62499994 0.68843985 0.5 0 0.578125 0.020933539 0.5 0.15000001 0.421875 0.020933539
		 0.36468354 0.078125 0.34375 0.15625 0.36468354 0.234375 0.421875 0.29156646 0.5 0.3125
		 0.578125 0.29156646 0.63531649 0.234375 0.65625 0.15625 0.63531649 0.078125 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 0.14205274;
	setAttr ".uvst[0].uvsp[250:499]" 0 0.14205274 0 0 1 0 1 0.14205274 0 0.14205274
		 0 0 1 0 1 0.14205274 0 0.14205274 0 0 1 0 1 0.14205274 0 0.14205274 0 0 1 0 1 0.14205274
		 0 0.14205274 0 0 1 0 1 0.14205274 0 0.14205274 0 0 1 0 1 0.14205274 0 0.14205274
		 0 0 1 0 1 0.14205274 0 0.14205274 0 0 1 0 1 0.14205274 0 0.14205274 0 0 1 0 1 0.14205274
		 0 0.14205274 0 0 1 0 1 0.14205274 0 0.14205274 0 0 1 0 1 0.14205274 0 0.14205274
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0;
	setAttr ".uvst[0].uvsp[500:565]" 1 0 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0
		 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 1 1 0 1 0.375 0.3125 0.39583334
		 0.3125 0.39583334 0.68843985 0.375 0.68843985 0.41666669 0.3125 0.41666669 0.68843985
		 0.43750003 0.3125 0.43750003 0.68843985 0.45833337 0.3125 0.45833337 0.68843985 0.47916672
		 0.3125 0.47916672 0.68843985 0.50000006 0.3125 0.50000006 0.68843985 0.52083337 0.3125
		 0.52083337 0.68843985 0.54166669 0.3125 0.54166669 0.68843985 0.5625 0.3125 0.5625
		 0.68843985 0.58333331 0.3125 0.58333331 0.68843985 0.60416663 0.3125 0.60416663 0.68843985
		 0.62499994 0.3125 0.62499994 0.68843985 0.5 0 0.578125 0.020933539 0.5 0.15000001
		 0.421875 0.020933539 0.36468354 0.078125 0.34375 0.15625 0.36468354 0.234375 0.421875
		 0.29156646 0.5 0.3125 0.578125 0.29156646 0.63531649 0.234375 0.65625 0.15625 0.63531649
		 0.078125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 27 ".pt";
	setAttr ".pt[85:96]" -type "float3" 0 -0.47523606 0  0 -0.47523606 0  0 
		-0.47523606 0  0 -0.47523606 0  0 -0.47523606 0  0 -0.47523606 0  0 -0.47523606 0  
		0 -0.47523606 0  0 -0.47523606 0  0 -0.47523606 0  0 -0.47523606 0  0 -0.47523606 
		0 ;
	setAttr ".pt[159:171]" -type "float3" 0 -0.47523606 0  0 -0.47523606 0  0 
		-0.47523606 0  0 -0.47523606 0  0 -0.47523606 0  0 -0.47523606 0  0 -0.47523606 0  
		0 -0.47523606 0  0 -0.47523606 0  0 -0.47523606 0  0 -0.47523606 0  0 -0.47523606 
		0  0 -0.3358478 0 ;
	setAttr -s 172 ".vt";
	setAttr ".vt[0:165]"  0.86602539 -1.022257328 -0.5 0.5 -1.022257328 -0.86602539
		 0 -1.022257328 -1 -0.5 -1.022257328 -0.86602539 -0.86602539 -1.022257328 -0.5 -1 -1.022257328 0
		 -0.86602539 -1.022257328 0.5 -0.5 -1.022257328 0.86602539 0 -1.022257328 1 0.5 -1.022257328 0.86602539
		 0.86602539 -1.022257328 0.5 1 -1.022257328 0 1.21740878 -1.022271872 -0.70287126
		 0.7028712 -1.022271872 -1.21740866 0 -1.022271872 -1.40574253 -0.7028712 -1.022271872 -1.21740866
		 -1.21740878 -1.022271872 -0.70287126 -1.40574241 -1.022271872 0 -1.21740878 -1.022271872 0.70287126
		 -0.7028712 -1.022271872 1.21740866 0 -1.022271872 1.40574253 0.7028712 -1.022271872 1.21740866
		 1.21740878 -1.022271872 0.70287126 1.40574241 -1.022271872 0 0 -1.022257328 0 1.21740878 -0.78030384 -0.70287126
		 0.7028712 -0.78030384 -1.21740866 0 -0.78030384 -1.40574253 -0.7028712 -0.78030384 -1.21740866
		 -1.21740878 -0.78030384 -0.70287126 -1.40574241 -0.78030384 0 -1.21740878 -0.78030384 0.70287126
		 -0.7028712 -0.78030384 1.21740866 0 -0.78030384 1.40574253 0.7028712 -0.78030384 1.21740866
		 1.21740878 -0.78030384 0.70287126 1.40574241 -0.78030384 0 1.21740878 1.31606615 -0.70287126
		 0.7028712 1.31606615 -1.21740866 0 1.31606615 -1.40574253 -0.7028712 1.31606615 -1.21740866
		 -1.21740878 1.31606615 -0.70287126 -1.40574241 1.31606615 0 -1.21740878 1.31606615 0.70287126
		 -0.7028712 1.31606615 1.21740866 0 1.31606615 1.40574253 0.7028712 1.31606615 1.21740866
		 1.21740878 1.31606615 0.70287126 1.40574241 1.31606615 0 1.21740878 3.44189787 -0.70287126
		 0.7028712 3.44189787 -1.21740866 0 3.44189787 -1.40574253 -0.7028712 3.44189787 -1.21740866
		 -1.21740878 3.44189787 -0.70287126 -1.40574241 3.44189787 0 -1.21740878 3.44189787 0.70287126
		 -0.7028712 3.44189787 1.21740866 0 3.44189787 1.40574253 0.7028712 3.44189787 1.21740866
		 1.21740878 3.44189787 0.70287126 1.40574241 3.44189787 0 1.21740878 4.54522133 -0.70287126
		 0.7028712 4.54522133 -1.21740866 0 4.54522133 -1.40574253 -0.7028712 4.54522133 -1.21740866
		 -1.21740878 4.54522133 -0.70287126 -1.40574241 4.54522133 0 -1.21740878 4.54522133 0.70287126
		 -0.7028712 4.54522133 1.21740866 0 4.54522133 1.40574253 0.7028712 4.54522133 1.21740866
		 1.21740878 4.54522133 0.70287126 1.40574241 4.54522133 0 1.21740878 4.70674515 -0.70287126
		 0.7028712 4.70674515 -1.21740866 0 4.70674515 -1.40574253 -0.7028712 4.70674515 -1.21740866
		 -1.21740878 4.70674515 -0.70287126 -1.40574241 4.70674515 0 -1.21740878 4.70674515 0.70287126
		 -0.7028712 4.70674515 1.21740866 0 4.70674515 1.40574253 0.7028712 4.70674515 1.21740866
		 1.21740878 4.70674515 0.70287126 1.40574241 4.70674515 0 1.3327136 5.64571762 -0.7694425
		 0.76944244 5.64571762 -1.33271337 0 5.64571762 -1.538885 -0.76944244 5.64571762 -1.33271337
		 -1.3327136 5.64571762 -0.7694425 -1.53888488 5.64571762 0 -1.3327136 5.64571762 0.7694425
		 -0.76944244 5.64571762 1.33271337 0 5.64571762 1.538885 0.76944244 5.64571762 1.33271337
		 1.3327136 5.64571762 0.7694425 1.53888488 5.64571762 0 1.10383558 3.44189787 -0.63729972
		 0.63729966 3.44189787 -1.10383534 0 3.44189787 -1.27459943 -0.63729966 3.44189787 -1.10383534
		 -1.10383558 3.44189787 -0.63729972 1.10383558 4.54522133 -0.63729972 0.63729966 4.54522133 -1.10383534
		 0 4.54522133 -1.27459943 -0.63729966 4.54522133 -1.10383534 -1.10383558 4.54522133 -0.63729972
		 1.24342883 2.99496698 -0.39551687 0.63729954 2.71578026 -1.10383534 2.3670612e-008 2.71578026 -1.27459955
		 -0.63729942 2.71578026 -1.10383511 -1.24342871 2.99496698 -0.39551675 1.24342906 4.82440805 -0.39551714
		 0.63729978 5.10359478 -1.10383546 7.1011833e-008 5.10359478 -1.27459919 -0.6372996 5.10359478 -1.10383511
		 -1.24342895 4.82440805 -0.39551699 -1.13594759 3.44189787 0.65583956 -0.65583956 3.44189787 1.13594747
		 0 3.44189787 1.31167924 0.65583956 3.44189787 1.13594747 1.13594759 3.44189787 0.65583956
		 -1.13594759 4.54522133 0.65583956 -0.65583956 4.54522133 1.13594747 0 4.54522133 1.31167924
		 0.65583956 4.54522133 1.13594747 1.13594759 4.54522133 0.65583956 -1.25966179 3.026725531 0.44156042
		 -0.6558395 2.77929735 1.13594747 -1.110223e-016 2.77929735 1.31167924 0.65583956 2.77929735 1.13594747
		 1.25966179 3.026725531 0.44156048 -1.25966203 4.79264975 0.44156069 -0.65583974 5.040078163 1.1359477
		 1.4424224e-008 5.040078163 1.31167924 0.65583974 5.040078163 1.13594759 1.25966191 4.79264975 0.44156066
		 1.24342883 2.066940069 -0.39551687 0.63729954 1.78775334 -1.10383534 2.3670612e-008 1.78775334 -1.27459955
		 -0.63729942 1.78775334 -1.10383511 -1.24342871 2.066940069 -0.39551675 -1.25966179 2.098698616 0.44156042
		 -0.6558395 1.85127044 1.13594747 -1.110223e-016 1.85127044 1.31167924 0.65583956 1.85127044 1.13594747
		 1.25966179 2.098698616 0.44156048 -0.76944244 4.79826021 -1.33271325 0 4.79826021 -1.538885
		 0.76944244 4.79826021 -1.33271325 1.33271337 4.79826021 -0.7694425 1.53888488 4.79826021 0
		 1.33271337 4.79826021 0.7694425 0.76944244 4.79826021 1.33271325 0 4.79826021 1.538885
		 -0.76944244 4.79826021 1.33271325 -1.33271337 4.79826021 0.7694425 -1.53888488 4.79826021 0
		 -1.33271337 4.79826021 -0.7694425 0.86602539 5.8759675 -0.5 0.5 5.8759675 -0.86602539
		 0 5.8759675 -1 -0.5 5.8759675 -0.86602539 -0.86602539 5.8759675 -0.5 -1 5.8759675 -1.9326589e-017
		 -0.86602539 5.8759675 0.5;
	setAttr ".vt[166:171]" -0.5 5.8759675 0.86602539 0 5.8759675 1 0.5 5.8759675 0.86602539
		 0.86602539 5.8759675 0.5 1 5.8759675 1.9326589e-017 0 5.8759675 3.4192597e-025;
	setAttr -s 338 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0
		 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 24 1 1 24 3 1 24 5 1 24 7 1 24 9 1 24 11 1 12 25 0
		 13 26 0 25 26 0 14 27 0 26 27 0 15 28 0 27 28 0 16 29 0 28 29 0 17 30 0 29 30 0 18 31 0
		 30 31 0 19 32 0 31 32 0 20 33 0 32 33 0 21 34 0 33 34 0 22 35 0 34 35 0 23 36 0 35 36 0
		 36 25 0 25 37 0 26 38 0 37 38 0 27 39 0 38 39 0 28 40 0 39 40 0 29 41 0 40 41 0 30 42 0
		 41 42 0 31 43 0 42 43 0 32 44 0 43 44 0 33 45 0 44 45 0 34 46 0 45 46 0 35 47 0 46 47 0
		 36 48 0 47 48 0 48 37 0 37 49 0 38 50 0 49 50 0 39 51 0 50 51 0 40 52 0 51 52 0 41 53 0
		 52 53 0 42 54 0 53 54 0 43 55 0 54 55 0 44 56 0 55 56 0 45 57 0 56 57 0 46 58 0 57 58 0
		 47 59 0 58 59 0 48 60 0 59 60 0 60 49 0 49 61 0 61 62 0 62 63 0 63 64 0 53 65 0 64 65 0
		 54 66 0 65 66 0 55 67 0 66 67 0 67 68 0 68 69 0 69 70 0 59 71 0 70 71 0 60 72 0 71 72 0
		 72 61 0 61 73 0 62 74 0 73 74 0 63 75 0 74 75 0 64 76 0 75 76 0 65 77 0 76 77 0 66 78 0
		 77 78 0 67 79 0 78 79 0 68 80 0 79 80 0 69 81 0 80 81 0 70 82 0 81 82 0 71 83 0 82 83 0
		 72 84 0 83 84 0 84 73 0 73 150 0 74 149 0 85 86 0 75 148 0 86 87 0 76 147 0 87 88 0
		 77 158 0 88 89 0 78 157 0;
	setAttr ".ed[166:331]" 89 90 0 79 156 0 90 91 0 80 155 0 91 92 0 81 154 0 92 93 0
		 82 153 0 93 94 0 83 152 0 94 95 0 84 151 0 95 96 0 96 85 0 49 97 0 50 98 1 97 98 0
		 51 99 1 98 99 0 52 100 1 99 100 0 53 101 0 100 101 0 61 102 0 97 102 0 62 103 1 102 103 0
		 63 104 1 103 104 0 64 105 1 104 105 0 65 106 0 101 106 0 105 106 0 97 107 1 98 108 0
		 107 108 0 99 109 0 108 109 0 100 110 0 109 110 0 101 111 1 110 111 0 102 112 1 107 112 0
		 103 113 0 112 113 0 104 114 0 113 114 0 105 115 0 114 115 0 106 116 1 111 116 0 115 116 0
		 55 117 0 56 118 1 117 118 0 57 119 1 118 119 0 58 120 1 119 120 0 59 121 0 120 121 0
		 67 122 0 117 122 0 68 123 1 122 123 0 69 124 1 123 124 0 70 125 1 124 125 0 71 126 0
		 121 126 0 125 126 0 117 127 1 118 128 0 127 128 0 119 129 0 128 129 0 120 130 0 129 130 0
		 121 131 1 130 131 0 122 132 1 127 132 0 123 133 0 132 133 0 124 134 0 133 134 0 125 135 0
		 134 135 0 126 136 1 131 136 0 135 136 0 107 131 0 112 136 0 127 111 0 132 116 0 107 137 0
		 108 138 0 137 138 0 109 139 0 138 139 0 110 140 0 139 140 0 111 141 0 140 141 0 127 142 0
		 128 143 0 142 143 0 129 144 0 143 144 0 130 145 0 144 145 0 131 146 0 145 146 0 137 146 0
		 142 141 0 147 88 0 148 87 0 147 148 1 149 86 0 148 149 1 150 85 0 149 150 1 151 96 0
		 150 151 1 152 95 0 151 152 1 153 94 0 152 153 1 154 93 0 153 154 1 155 92 0 154 155 1
		 156 91 0 155 156 1 157 90 0 156 157 1 158 89 0 157 158 1 158 147 1 159 160 0 160 86 0
		 159 85 0 160 161 0 161 87 0 161 162 0 162 88 0 162 163 0 163 89 0 163 164 0 164 90 0
		 164 165 0 165 91 0 165 166 0 166 92 0 166 167 0 167 93 0 167 168 0 168 94 0 168 169 0
		 169 95 0 169 170 0 170 96 0 170 159 0;
	setAttr ".ed[332:337]" 171 160 1 171 162 1 171 164 1 171 166 1 171 168 1 171 170 1;
	setAttr -s 164 ".fc[0:163]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 0 1 2 3
		f 4 1 26 -14 -26
		mu 0 4 1 4 5 2
		f 4 2 27 -15 -27
		mu 0 4 4 6 7 5
		f 4 3 28 -16 -28
		mu 0 4 6 8 9 7
		f 4 4 29 -17 -29
		mu 0 4 8 10 11 9
		f 4 5 30 -18 -30
		mu 0 4 10 12 13 11
		f 4 6 31 -19 -31
		mu 0 4 12 14 15 13
		f 4 7 32 -20 -32
		mu 0 4 14 16 17 15
		f 4 8 33 -21 -33
		mu 0 4 16 18 19 17
		f 4 9 34 -22 -34
		mu 0 4 18 20 21 19
		f 4 10 35 -23 -35
		mu 0 4 20 22 23 21
		f 4 11 24 -24 -36
		mu 0 4 22 24 25 23
		f 4 -2 -37 37 -3
		mu 0 4 26 27 28 29
		f 4 -4 -38 38 -5
		mu 0 4 30 29 28 31
		f 4 -6 -39 39 -7
		mu 0 4 32 31 28 33
		f 4 -8 -40 40 -9
		mu 0 4 34 33 28 35
		f 4 -10 -41 41 -11
		mu 0 4 36 35 28 37
		f 4 -12 -42 36 -1
		mu 0 4 38 37 28 27
		f 4 12 43 -45 -43
		mu 0 4 39 40 41 42
		f 4 13 45 -47 -44
		mu 0 4 43 44 45 46
		f 4 14 47 -49 -46
		mu 0 4 47 48 49 50
		f 4 15 49 -51 -48
		mu 0 4 51 52 53 54
		f 4 16 51 -53 -50
		mu 0 4 55 56 57 58
		f 4 17 53 -55 -52
		mu 0 4 59 60 61 62
		f 4 18 55 -57 -54
		mu 0 4 63 64 65 66
		f 4 19 57 -59 -56
		mu 0 4 67 68 69 70
		f 4 20 59 -61 -58
		mu 0 4 71 72 73 74
		f 4 21 61 -63 -60
		mu 0 4 75 76 77 78
		f 4 22 63 -65 -62
		mu 0 4 79 80 81 82
		f 4 23 42 -66 -64
		mu 0 4 83 84 85 86
		f 4 44 67 -69 -67
		mu 0 4 87 88 89 90
		f 4 46 69 -71 -68
		mu 0 4 91 92 93 94
		f 4 48 71 -73 -70
		mu 0 4 95 96 97 98
		f 4 50 73 -75 -72
		mu 0 4 99 100 101 102
		f 4 52 75 -77 -74
		mu 0 4 103 104 105 106
		f 4 54 77 -79 -76
		mu 0 4 107 108 109 110
		f 4 56 79 -81 -78
		mu 0 4 111 112 113 114
		f 4 58 81 -83 -80
		mu 0 4 115 116 117 118
		f 4 60 83 -85 -82
		mu 0 4 119 120 121 122
		f 4 62 85 -87 -84
		mu 0 4 123 124 125 126
		f 4 64 87 -89 -86
		mu 0 4 127 128 129 130
		f 4 65 66 -90 -88
		mu 0 4 131 132 133 134
		f 4 68 91 -93 -91
		mu 0 4 135 136 137 138
		f 4 70 93 -95 -92
		mu 0 4 139 140 141 142
		f 4 72 95 -97 -94
		mu 0 4 143 144 145 146
		f 4 74 97 -99 -96
		mu 0 4 147 148 149 150
		f 4 76 99 -101 -98
		mu 0 4 151 152 153 154
		f 4 78 101 -103 -100
		mu 0 4 155 156 157 158
		f 4 80 103 -105 -102
		mu 0 4 159 160 161 162
		f 4 82 105 -107 -104
		mu 0 4 163 164 165 166
		f 4 84 107 -109 -106
		mu 0 4 167 168 169 170
		f 4 86 109 -111 -108
		mu 0 4 171 172 173 174
		f 4 88 111 -113 -110
		mu 0 4 175 176 177 178
		f 4 89 90 -114 -112
		mu 0 4 179 180 181 182
		f 4 100 120 -122 -119
		mu 0 4 183 184 185 186
		f 4 102 122 -124 -121
		mu 0 4 187 188 189 190
		f 4 112 129 -131 -128
		mu 0 4 191 192 193 194
		f 4 113 114 -132 -130
		mu 0 4 195 196 197 198
		f 4 115 133 -135 -133
		mu 0 4 199 200 201 202
		f 4 116 135 -137 -134
		mu 0 4 203 204 205 206
		f 4 117 137 -139 -136
		mu 0 4 207 208 209 210
		f 4 119 139 -141 -138
		mu 0 4 211 212 213 214
		f 4 121 141 -143 -140
		mu 0 4 215 216 217 218
		f 4 123 143 -145 -142
		mu 0 4 219 220 221 222
		f 4 124 145 -147 -144
		mu 0 4 223 224 225 226
		f 4 125 147 -149 -146
		mu 0 4 227 228 229 230
		f 4 126 149 -151 -148
		mu 0 4 231 232 233 234
		f 4 128 151 -153 -150
		mu 0 4 235 236 237 238
		f 4 130 153 -155 -152
		mu 0 4 239 240 241 242
		f 4 131 132 -156 -154
		mu 0 4 243 244 245 246
		f 4 134 157 290 -157
		mu 0 4 247 248 249 250
		f 4 136 159 288 -158
		mu 0 4 251 252 253 254
		f 4 138 161 286 -160
		mu 0 4 255 256 257 258
		f 4 140 163 307 -162
		mu 0 4 259 260 261 262
		f 4 142 165 306 -164
		mu 0 4 263 264 265 266
		f 4 144 167 304 -166
		mu 0 4 267 268 269 270
		f 4 146 169 302 -168
		mu 0 4 271 272 273 274
		f 4 148 171 300 -170
		mu 0 4 275 276 277 278
		f 4 150 173 298 -172
		mu 0 4 279 280 281 282
		f 4 152 175 296 -174
		mu 0 4 283 284 285 286
		f 4 154 177 294 -176
		mu 0 4 287 288 289 290
		f 4 155 156 292 -178
		mu 0 4 291 292 293 294
		f 4 92 181 -183 -181
		mu 0 4 295 296 297 298
		f 4 94 183 -185 -182
		mu 0 4 299 300 301 302
		f 4 96 185 -187 -184
		mu 0 4 303 304 305 306
		f 4 98 187 -189 -186
		mu 0 4 307 308 309 310
		f 4 -115 180 190 -190
		mu 0 4 311 312 313 314
		f 4 -116 189 192 -192
		mu 0 4 315 316 317 318
		f 4 -117 191 194 -194
		mu 0 4 319 320 321 322
		f 4 -118 193 196 -196
		mu 0 4 323 324 325 326
		f 4 118 197 -199 -188
		mu 0 4 327 328 329 330
		f 4 -120 195 199 -198
		mu 0 4 331 332 333 334
		f 4 182 201 -203 -201
		mu 0 4 335 336 337 338
		f 4 184 203 -205 -202
		mu 0 4 339 340 341 342
		f 4 186 205 -207 -204
		mu 0 4 343 344 345 346
		f 4 188 207 -209 -206
		mu 0 4 347 348 349 350
		f 4 -191 200 210 -210
		mu 0 4 351 352 353 354
		f 4 -193 209 212 -212
		mu 0 4 355 356 357 358
		f 4 -195 211 214 -214
		mu 0 4 359 360 361 362
		f 4 -197 213 216 -216
		mu 0 4 363 364 365 366
		f 4 198 217 -219 -208
		mu 0 4 367 368 369 370
		f 4 -200 215 219 -218
		mu 0 4 371 372 373 374
		f 4 104 221 -223 -221
		mu 0 4 375 376 377 378
		f 4 106 223 -225 -222
		mu 0 4 379 380 381 382
		f 4 108 225 -227 -224
		mu 0 4 383 384 385 386
		f 4 110 227 -229 -226
		mu 0 4 387 388 389 390
		f 4 -123 220 230 -230
		mu 0 4 391 392 393 394
		f 4 -125 229 232 -232
		mu 0 4 395 396 397 398
		f 4 -126 231 234 -234
		mu 0 4 399 400 401 402
		f 4 -127 233 236 -236
		mu 0 4 403 404 405 406
		f 4 127 237 -239 -228
		mu 0 4 407 408 409 410
		f 4 -129 235 239 -238
		mu 0 4 411 412 413 414
		f 4 222 241 -243 -241
		mu 0 4 415 416 417 418
		f 4 224 243 -245 -242
		mu 0 4 419 420 421 422
		f 4 226 245 -247 -244
		mu 0 4 423 424 425 426
		f 4 228 247 -249 -246
		mu 0 4 427 428 429 430
		f 4 -231 240 250 -250
		mu 0 4 431 432 433 434
		f 4 -233 249 252 -252
		mu 0 4 435 436 437 438
		f 4 -235 251 254 -254
		mu 0 4 439 440 441 442
		f 4 -237 253 256 -256
		mu 0 4 443 444 445 446
		f 4 238 257 -259 -248
		mu 0 4 447 448 449 450
		f 4 -240 255 259 -258
		mu 0 4 451 452 453 454
		f 4 -211 260 258 -262
		mu 0 4 455 456 457 458
		f 4 -251 262 218 -264
		mu 0 4 459 460 461 462
		f 4 202 265 -267 -265
		mu 0 4 463 464 465 466
		f 4 204 267 -269 -266
		mu 0 4 467 468 469 470
		f 4 206 269 -271 -268
		mu 0 4 471 472 473 474
		f 4 208 271 -273 -270
		mu 0 4 475 476 477 478
		f 4 242 274 -276 -274
		mu 0 4 479 480 481 482
		f 4 244 276 -278 -275
		mu 0 4 483 484 485 486
		f 4 246 278 -280 -277
		mu 0 4 487 488 489 490
		f 4 248 280 -282 -279
		mu 0 4 491 492 493 494
		f 4 -261 264 282 -281
		mu 0 4 495 496 497 498
		f 4 -263 273 283 -272
		mu 0 4 499 500 501 502
		f 4 -287 284 -163 -286
		mu 0 4 258 257 503 504
		f 4 -289 285 -161 -288
		mu 0 4 254 253 505 506
		f 4 -291 287 -159 -290
		mu 0 4 250 249 507 508
		f 4 -293 289 -180 -292
		mu 0 4 294 293 509 510
		f 4 -295 291 -179 -294
		mu 0 4 290 289 511 512
		f 4 -297 293 -177 -296
		mu 0 4 286 285 513 514
		f 4 -299 295 -175 -298
		mu 0 4 282 281 515 516
		f 4 -301 297 -173 -300
		mu 0 4 278 277 517 518
		f 4 -303 299 -171 -302
		mu 0 4 274 273 519 520
		f 4 -305 301 -169 -304
		mu 0 4 270 269 521 522
		f 4 -307 303 -167 -306
		mu 0 4 266 265 523 524
		f 4 -308 305 -165 -285
		mu 0 4 262 261 525 526
		f 4 308 309 -159 -311
		mu 0 4 527 528 529 530
		f 4 311 312 -161 -310
		mu 0 4 528 531 532 529
		f 4 313 314 -163 -313
		mu 0 4 531 533 534 532
		f 4 315 316 -165 -315
		mu 0 4 533 535 536 534
		f 4 317 318 -167 -317
		mu 0 4 535 537 538 536
		f 4 319 320 -169 -319
		mu 0 4 537 539 540 538
		f 4 321 322 -171 -321
		mu 0 4 539 541 542 540
		f 4 323 324 -173 -323
		mu 0 4 541 543 544 542
		f 4 325 326 -175 -325
		mu 0 4 543 545 546 544
		f 4 327 328 -177 -327
		mu 0 4 545 547 548 546
		f 4 329 330 -179 -329
		mu 0 4 547 549 550 548
		f 4 331 310 -180 -331
		mu 0 4 549 551 552 550
		f 4 -312 -333 333 -314
		mu 0 4 553 554 555 556
		f 4 -316 -334 334 -318
		mu 0 4 557 556 555 558
		f 4 -320 -335 335 -322
		mu 0 4 559 558 555 560
		f 4 -324 -336 336 -326
		mu 0 4 561 560 555 562
		f 4 -328 -337 337 -330
		mu 0 4 563 562 555 564
		f 4 -332 -338 332 -309
		mu 0 4 565 564 555 554;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n"
		+ "                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n"
		+ "                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyCylProj -n "polyCylProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:163]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 2.2589238882064819 0 ;
	setAttr ".ps" -type "double2" 180 6.5623915195465088 ;
	setAttr ".is" -type "double2" 0.44517988319887769 1 ;
	setAttr ".r" 3.0777699947357178;
createNode polyCylProj -n "polyCylProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[77]" "f[92:101]" "f[112:133]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -5.9604644775390625e-008 3.4456740617752075 0.13214272260665894 ;
	setAttr ".ic" -type "double2" -1.4151186932232556 0.5 ;
	setAttr ".ps" -type "double2" 180 3.3158414363861084 ;
	setAttr ".is" -type "double2" 0.22539584894908893 0.38752227902752046 ;
	setAttr ".r" 2.8134845495223999;
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[104:107]" -type "float2" 0.082467556 0  0 0  0 0  0.081782818 
		0 ;
	setAttr ".uvtk[112]" -type "float2" 0.4507916 0 ;
	setAttr ".uvtk[130:131]" -type "float2" 0.4507916 0  0.4507916 0 ;
	setAttr ".uvtk[198]" -type "float2" 0.4507916 0 ;
	setAttr ".uvtk[206:207]" -type "float2" -0.45079184 0  -0.45079184 0 ;
	setAttr ".uvtk[210]" -type "float2" -0.45079184 0 ;
	setAttr ".uvtk[212]" -type "float2" -0.45079184 0 ;
	setAttr -s 120 ".nuv[0:119]"  92 97 -1.5714848 0.49955869 92 
		98 -1.60635149 0.49955869 92 108 -1.60635149 0.41469735 92 107 -1.55660295
		 0.44732589 93 98 -1.60635149 0.49955869 93 109 -1.64050746 0.41469735 
		93 108 -1.60635149 0.41469735 94 100 -1.22387159 0.49955869 94 
		110 -1.22387159 0.41469735 94 109 -1.18971574 0.41469735 95 100 -1.22387159
		 0.49955869 95 101 -1.25873828 0.49955869 95 111 -1.27362013 0.44732589 
		95 110 -1.22387159 0.41469735 96 102 -1.5714848 0.62850404 96 97
		 -1.5714848 0.49955869 96 107 -1.55660295 0.44732589 96 112 -1.55660295
		 0.66113257 97 103 -1.60635149 0.62850404 97 102 -1.5714848 0.62850404 
		97 112 -1.55660295 0.66113257 97 113 -1.60635149 0.69376117 98 
		103 -1.60635149 0.62850404 98 113 -1.60635149 0.69376117 99 105 -1.22387159
		 0.62850404 99 115 -1.22387159 0.69376117 100 101 -1.25873828 0.49955869 
		100 106 -1.25873828 0.62850404 100 116 -1.27362013 0.66113257 100 
		111 -1.27362013 0.44732589 101 106 -1.25873828 0.62850404 101 105 -1.22387159
		 0.62850404 101 115 -1.22387159 0.69376117 101 116 -1.27362013 0.66113257 
		112 117 -1.33340645 0.49955869 112 118 -1.37359023 0.49955869 112 
		128 -1.37359023 0.4221206 112 127 -1.31969476 0.45103753 113 118 -1.37359023
		 0.49955869 113 119 -1.41511154 0.49955869 113 129 -1.41511154 0.4221206 
		113 128 -1.37359023 0.4221206 114 119 -1.41511154 0.49955869 114 120
		 -1.45663297 0.49955869 114 130 -1.45663297 0.4221206 114 129 -1.41511154
		 0.4221206 115 120 -1.45663297 0.49955869 115 121 -1.49681664 0.49955869 
		115 131 -1.51052833 0.45103753 115 130 -1.45663297 0.4221206 116 122
		 -1.33340645 0.62850404 116 117 -1.33340645 0.49955869 116 127 -1.31969476
		 0.45103753 116 132 -1.31969476 0.65742099 117 123 -1.37359023 0.62850404 
		117 122 -1.33340645 0.62850404 117 132 -1.31969476 0.65742099 117 
		133 -1.37359023 0.68633795 118 124 -1.41511154 0.62850404 118 123 -1.37359023
		 0.62850404 118 133 -1.37359023 0.68633795 118 134 -1.41511154 0.68633795 
		119 125 -1.45663297 0.62850404 119 124 -1.41511154 0.62850404 119 
		134 -1.41511154 0.68633795 119 135 -1.45663297 0.68633795 120 121 -1.49681664
		 0.49955869 120 126 -1.49681664 0.62850404 120 136 -1.51052833 0.65742099 
		120 131 -1.51052833 0.45103753 121 126 -1.49681664 0.62850404 121 
		125 -1.45663297 0.62850404 121 135 -1.45663297 0.68633795 121 136 -1.51052833
		 0.65742099 122 112 -1.55660295 0.66113257 122 107 -1.55660295 0.44732589 
		122 131 -1.51052833 0.45103753 122 136 -1.51052833 0.65742099 123 
		132 -1.31969476 0.65742099 123 127 -1.31969476 0.45103753 123 111 -1.27362013
		 0.44732589 123 116 -1.27362013 0.66113257 124 107 -1.55660295 0.44732589 
		124 108 -1.60635149 0.41469735 124 138 -1.60635149 0.30623889 124 
		137 -1.55660295 0.33886743 125 108 -1.60635149 0.41469735 125 109 -1.64050746
		 0.41469735 125 138 -1.60635149 0.30623889 126 109 -1.18971574 0.41469735 
		126 110 -1.22387159 0.41469735 126 140 -1.22387159 0.30623889 127 
		110 -1.22387159 0.41469735 127 111 -1.27362013 0.44732589 127 141 -1.27362013
		 0.33886743 127 140 -1.22387159 0.30623889 128 127 -1.31969476 0.45103753 
		128 128 -1.37359023 0.4221206 128 143 -1.37359023 0.31366211 128 142
		 -1.31969476 0.34257904 129 128 -1.37359023 0.4221206 129 129 -1.41511154
		 0.4221206 129 144 -1.41511154 0.31366211 129 143 -1.37359023 0.31366211 
		130 129 -1.41511154 0.4221206 130 130 -1.45663297 0.4221206 130 145
		 -1.45663297 0.31366211 130 144 -1.41511154 0.31366211 131 130 -1.45663297
		 0.4221206 131 131 -1.51052833 0.45103753 131 146 -1.51052833 0.34257904 
		131 145 -1.45663297 0.31366211 132 131 -1.51052833 0.45103753 132 
		107 -1.55660295 0.44732589 132 137 -1.55660295 0.33886743 132 146 -1.51052833
		 0.34257904 133 111 -1.27362013 0.44732589 133 127 -1.31969476 0.45103753 
		133 142 -1.31969476 0.34257904 133 141 -1.27362013 0.33886743;
createNode polyMapSewMove -n "polyMapSewMove1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[145:148]" "e[150]" "e[169]" "e[171]" "e[297:300]" "e[302]";
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[76]" -type "float2" -0.0085623162 -0.0071352446 ;
	setAttr ".uvtk[78]" -type "float2" 0.0071352734 -0.0071352446 ;
	setAttr ".uvtk[90:91]" -type "float2" -0.0085623162 0.0057082362  0.0071352734 
		0.0057082362 ;
createNode polyNormal -n "polyNormal1";
	setAttr ".ics" -type "componentList" 1 "f[146:163]";
createNode polyNormal -n "polyNormal2";
	setAttr ".ics" -type "componentList" 1 "f[146:163]";
	setAttr ".nm" 2;
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 129 ".uvtk";
	setAttr ".uvtk[104:112]" -type "float2" 1.970482 0.37777829  1.970482 0.30277351  
		1.9332105 0.39777589  1.9332105 0.32277113  2.0126367 0.26921853  2.0367486 0.26921853  
		2.0367486 0.32790467  2.0023451 0.30534032  1.7486231 0.26921853 ;
	setAttr ".uvtk[123:140]" -type "float2" 1.7486231 0.32790467  1.7722437 0.26921853  
		1.7722437 0.32790467  1.7963558 0.26921853  1.8066474 0.30534032  2.0126367 0.18004605  
		2.0023451 0.1574817  1.7486231 0.18004605  1.7486231 0.1349173  1.7722437 0.18004605  
		1.7722437 0.1349173  1.7963558 0.18004605  1.8066474 0.1574817  1.8479928 0.26921853  
		1.875782 0.26921853  1.875782 0.32277113  1.8385105 0.30277351  1.9044962 0.26921853 ;
	setAttr ".uvtk[177:180]" -type "float2" 1.9044962 0.32277113  1.9332105 0.26921853  
		1.9332105 0.32277113  1.9609996 0.26921853 ;
	setAttr ".uvtk[185:281]" -type "float2" 1.970482 0.30277351  1.8479928 0.18004605  
		1.8385105 0.1600484  1.875782 0.18004605  1.875782 0.14005087  1.9044962 0.18004605  
		1.9044962 0.14005087  1.9332105 0.18004605  1.9332105 0.14005087  1.9609996 0.18004605  
		1.970482 0.1600484  2.0367486 0.4029094  2.0023451 0.38034505  1.7486231 0.4029094  
		1.7722437 0.4029094  1.8066474 0.38034505  1.875782 0.39777589  1.8385105 0.37777829  
		1.9044962 0.39777589  1.9332105 0.39777589  1.970482 0.37777829  2.0603695 0.26921853  
		2.0603695 0.18004605  2.0367486 0.18004605  2.0367486 0.1349173  2.0603695 0.1349173  
		2.0603695 0.32790467  2.0603695 0.4029094  2.0126367 0.26921853  2.0367486 0.26921853  
		2.0367486 0.32790467  2.0023451 0.30534032  2.0603695 0.32790467  2.0367486 0.32790467  
		1.7722437 0.26921853  1.7722437 0.32790467  1.7486231 0.32790467  1.7963558 0.26921853  
		1.8066474 0.30534032  1.7722437 0.32790467  2.0126367 0.18004605  2.0023451 0.30534032  
		2.0023451 0.1574817  2.0367486 0.18004605  2.0023451 0.1574817  2.0367486 0.1349173  
		1.7722437 0.18004605  1.7722437 0.1349173  1.7963558 0.18004605  1.8066474 0.1574817  
		1.8066474 0.30534032  1.8066474 0.1574817  1.8479928 0.26921853  1.875782 0.26921853  
		1.875782 0.32277113  1.8385105 0.30277351  1.9044962 0.26921853  1.9044962 0.32277113  
		1.875782 0.32277113  1.9332105 0.26921853  1.9332105 0.32277113  1.9044962 0.32277113  
		1.9609996 0.26921853  1.970482 0.30277351  1.9332105 0.32277113  1.8479928 0.18004605  
		1.8385105 0.30277351  1.8385105 0.1600484  1.875782 0.18004605  1.8385105 0.1600484  
		1.875782 0.14005087  1.9044962 0.18004605  1.9044962 0.14005087  1.9332105 0.18004605  
		1.9332105 0.14005087  1.9609996 0.18004605  1.970482 0.1600484  1.970482 0.30277351  
		1.970482 0.1600484  2.0023451 0.30534032  1.970482 0.30277351  1.8385105 0.30277351  
		1.8066474 0.30534032  2.0023451 0.30534032  2.0367486 0.32790467  2.0367486 0.4029094  
		2.0023451 0.38034505  1.7722437 0.32790467  1.7722437 0.4029094  1.8066474 0.30534032  
		1.8066474 0.38034505  1.8385105 0.30277351  1.875782 0.32277113  1.875782 0.39777589  
		1.8385105 0.37777829  1.9044962 0.32277113  1.9044962 0.39777589 ;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/KarlaZero/Documents/maya/projects/default//scenes/MollyJam2013/bin001.jpg";
createNode place2dTexture -n "place2dTexture1";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :defaultTextureList1;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polyTweakUV3.out" "binShape.i";
connectAttr "polyTweakUV3.uvtk[0]" "binShape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape1.o" "polyCylProj1.ip";
connectAttr "binShape.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "polyCylProj2.ip";
connectAttr "binShape.wm" "polyCylProj2.mp";
connectAttr "polyCylProj2.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapSewMove1.ip";
connectAttr "polyMapSewMove1.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyNormal1.ip";
connectAttr "polyNormal1.out" "polyNormal2.ip";
connectAttr "polyNormal2.out" "polyTweakUV3.ip";
connectAttr "file1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "binShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr ":perspShape.msg" ":defaultRenderGlobals.sc";
// End of bin001.ma

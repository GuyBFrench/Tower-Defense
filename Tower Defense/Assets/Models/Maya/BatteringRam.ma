//Maya ASCII 2023 scene
//Name: BatteringRam.ma
//Last modified: Wed, Mar 15, 2023 03:32:00 PM
//Codeset: 1252
requires maya "2023";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftPostEffects" "redshift4maya" "3.5.12";
requires "mtoa" "5.1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202202161415-df43006fd3";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "075789B1-4C97-1152-026C-418B3FD1CBAF";
createNode transform -s -n "persp";
	rename -uid "6FB88CDF-4D27-372E-A363-6D8439BA3C0D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.4031335382218755 2.1948782264918574 5.8730183444933903 ;
	setAttr ".r" -type "double3" -7.5383527356033122 -1758.1999999984455 -5.3330936926435851e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "33F0129A-4448-88DA-5C87-06A6963D3C1C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 8.4556696195656347;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "14878DC7-4E2E-A9D5-034F-BCA33AD9CD1F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5291CE79-4791-47EC-30A2-FA8143CEA992";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "3B818E3F-4AAB-383F-D364-20B44AD085B4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BB5ED70C-4B16-7945-568F-DABEF418BD38";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "A3AED405-4576-6E5E-9F96-DDA220470FD6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "A75CC05D-4F2D-DFD7-3896-C1A316A503BD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "ADA04389-404E-01B5-D232-8E86A4E4400D";
	setAttr ".t" -type "double3" -0.61792467670013929 0.29435058985016871 0 ;
	setAttr ".s" -type "double3" 0.22234797114242094 0.22234797114242094 1.9348832716515003 ;
createNode transform -n "pCube5" -p "pCube1";
	rename -uid "C90A3657-4855-CC51-8AFC-FA95747161B8";
createNode transform -n "polySurface1" -p "pCube5";
	rename -uid "FB9A610D-44F1-4F33-0D30-93A44D3B62FC";
	setAttr ".t" -type "double3" -0.24135940195487277 0.15548564275571283 0 ;
	setAttr ".s" -type "double3" 0.78551729387268676 0.78551729387268676 1 ;
createNode transform -n "polySurface1" -p "|pCube1|pCube5|polySurface1";
	rename -uid "B98AA7EA-4250-4F47-AE23-6488639ABFFC";
	setAttr ".rp" -type "double3" -4.4408920985006271e-16 2.2204460492503136e-16 0 ;
	setAttr ".sp" -type "double3" -4.4408920985006271e-16 2.2204460492503136e-16 0 ;
createNode mesh -n "polySurfaceShape1" -p "|pCube1|pCube5|polySurface1|polySurface1";
	rename -uid "3140B792-4D44-A6AF-4E1C-89A47A04E60E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.68964224574337907 0.87739619686934456 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape16" -p "|pCube1|pCube5|polySurface1|polySurface1";
	rename -uid "16F9F3D1-4544-D15C-CD61-B9ABA0EFA563";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.50000024 -0.5 0.5 -0.5 0.5 0.5
		 0.50000024 0.5 0.5 -0.5 0.5 -0.5 0.50000024 0.5 -0.5 -0.5 -0.5 -0.5 0.50000024 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		f 4 1 7 -3 -7
		f 4 2 9 -4 -9
		f 4 3 11 -1 -11
		f 4 -12 -10 -8 -6
		f 4 10 4 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform2" -p "pCube1";
	rename -uid "9BF25216-4F42-A804-4173-42A17A6A34AA";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform2";
	rename -uid "AFA39E80-47CB-6118-6378-5DBD9A903EC4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder1";
	rename -uid "99BD3654-412B-847C-CC29-D3B2B9CC318B";
	setAttr ".t" -type "double3" -0.80376419347269723 0.24539046716659008 0.63137031726096193 ;
	setAttr ".r" -type "double3" 0 0 90 ;
createNode transform -n "pCylinder3" -p "pCylinder1";
	rename -uid "4B5B561F-4723-5689-1012-DF8A80DB1608";
	setAttr ".t" -type "double3" 0.039630984554551829 0.0087995466986634518 0 ;
	setAttr ".rp" -type "double3" 0.033936550528141707 0 0 ;
	setAttr ".sp" -type "double3" 0.033936550528141707 0 0 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "DBEA6127-4B31-88FF-50E9-2FA591733F28";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.26109238101020482 0.78350543449074916 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape17" -p "pCylinder3";
	rename -uid "F18253EB-4F50-4A71-A7B5-FD9691B81DF4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:29]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 10 "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 10 "e[0]" "e[1]" "e[2]" "e[3]" "e[4]" "e[5]" "e[6]" "e[7]" "e[8]" "e[9]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 11 "vtx[0]" "vtx[1]" "vtx[2]" "vtx[3]" "vtx[4]" "vtx[5]" "vtx[6]" "vtx[7]" "vtx[8]" "vtx[9]" "vtx[20]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 10 "vtx[0]" "vtx[1]" "vtx[2]" "vtx[3]" "vtx[4]" "vtx[5]" "vtx[6]" "vtx[7]" "vtx[8]" "vtx[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 20 "vtx[0]" "vtx[1]" "vtx[2]" "vtx[3]" "vtx[4]" "vtx[5]" "vtx[6]" "vtx[7]" "vtx[8]" "vtx[9]" "vtx[10]" "vtx[11]" "vtx[12]" "vtx[13]" "vtx[14]" "vtx[15]" "vtx[16]" "vtx[17]" "vtx[18]" "vtx[19]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 11 "vtx[10]" "vtx[11]" "vtx[12]" "vtx[13]" "vtx[14]" "vtx[15]" "vtx[16]" "vtx[17]" "vtx[18]" "vtx[19]" "vtx[21]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 10 "vtx[10]" "vtx[11]" "vtx[12]" "vtx[13]" "vtx[14]" "vtx[15]" "vtx[16]" "vtx[17]" "vtx[18]" "vtx[19]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 10 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 10 "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 10 "e[10]" "e[11]" "e[12]" "e[13]" "e[14]" "e[15]" "e[16]" "e[17]" "e[18]" "e[19]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  0.033936549 0 0 0.033936549 
		0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 
		0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 0 
		0.033936549 0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 
		0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 0;
	setAttr -s 22 ".vt[0:21]"  0.24270512 -0.050000012 -0.17633563 0.092705086 -0.050000012 -0.28531703
		 -0.092705145 -0.050000012 -0.285317 -0.24270517 -0.050000012 -0.17633557 -0.30000004 -0.050000012 0
		 -0.24270512 -0.050000012 0.17633563 -0.092705086 -0.050000012 0.285317 0.092705116 -0.050000012 0.28531694
		 0.24270512 -0.050000012 0.17633557 0.30000001 -0.050000012 0 0.24270512 0.050000012 -0.17633563
		 0.092705086 0.050000012 -0.28531703 -0.092705145 0.050000012 -0.285317 -0.24270517 0.050000012 -0.17633557
		 -0.30000004 0.050000012 0 -0.24270512 0.050000012 0.17633563 -0.092705086 0.050000012 0.285317
		 0.092705116 0.050000012 0.28531694 0.24270512 0.050000012 0.17633557 0.30000001 0.050000012 0
		 0 -0.050000012 0 0 0.050000012 0;
	setAttr -s 50 ".ed[0:49]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 10 0 0 10 0 1 11 0 2 12 0 3 13 0 4 14 0 5 15 0 6 16 0 7 17 0 8 18 0 9 19 0
		 20 0 1 20 1 1 20 2 1 20 3 1 20 4 1 20 5 1 20 6 1 20 7 1 20 8 1 20 9 1 10 21 1 11 21 1
		 12 21 1 13 21 1 14 21 1 15 21 1 16 21 1 17 21 1 18 21 1 19 21 1;
	setAttr -s 30 -ch 100 ".fc[0:29]" -type "polyFaces" 
		f 4 0 21 -11 -21
		f 4 1 22 -12 -22
		f 4 2 23 -13 -23
		f 4 3 24 -14 -24
		f 4 4 25 -15 -25
		f 4 5 26 -16 -26
		f 4 6 27 -17 -27
		f 4 7 28 -18 -28
		f 4 8 29 -19 -29
		f 4 9 20 -20 -30
		f 3 -1 -31 31
		f 3 -2 -32 32
		f 3 -3 -33 33
		f 3 -4 -34 34
		f 3 -5 -35 35
		f 3 -6 -36 36
		f 3 -7 -37 37
		f 3 -8 -38 38
		f 3 -9 -39 39
		f 3 -10 -40 30
		f 3 10 41 -41
		f 3 11 42 -42
		f 3 12 43 -43
		f 3 13 44 -44
		f 3 14 45 -45
		f 3 15 46 -46
		f 3 16 47 -47
		f 3 17 48 -48
		f 3 18 49 -49
		f 3 19 40 -50;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder2";
	rename -uid "961A0BC1-4506-F415-D106-A595A038D7AF";
	setAttr ".t" -type "double3" -0.80376419347269723 0.24539046716659008 -0.61039332526403145 ;
	setAttr ".r" -type "double3" 0 0 90 ;
createNode transform -n "pCylinder5" -p "pCylinder2";
	rename -uid "1E92B450-4F08-C811-BEC9-5E940AAC8899";
	setAttr ".t" -type "double3" 0.039630984554551829 0.0087995466986634518 0 ;
	setAttr ".rp" -type "double3" 0.033936550528141707 0 0 ;
	setAttr ".sp" -type "double3" 0.033936550528141707 0 0 ;
createNode mesh -n "pCylinderShape5" -p "pCylinder5";
	rename -uid "D4B22529-4D96-7F2A-AAEC-65A5DD02816E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape9" -p "pCylinder5";
	rename -uid "16EB75E5-46A1-386A-96AB-8FBCD67CBA25";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:29]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  0.033936549 0 0 0.033936549 
		0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 
		0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 0 
		0.033936549 0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 
		0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 0 0.033936549 0 0;
	setAttr -s 22 ".vt[0:21]"  0.24270512 -0.050000012 -0.17633563 0.092705086 -0.050000012 -0.285317
		 -0.092705145 -0.050000012 -0.285317 -0.24270517 -0.050000012 -0.17633557 -0.30000004 -0.050000012 0
		 -0.24270512 -0.050000012 0.17633563 -0.092705086 -0.050000012 0.285317 0.092705116 -0.050000012 0.28531697
		 0.24270512 -0.050000012 0.17633557 0.30000001 -0.050000012 0 0.24270512 0.050000012 -0.17633563
		 0.092705086 0.050000012 -0.285317 -0.092705145 0.050000012 -0.285317 -0.24270517 0.050000012 -0.17633557
		 -0.30000004 0.050000012 0 -0.24270512 0.050000012 0.17633563 -0.092705086 0.050000012 0.285317
		 0.092705116 0.050000012 0.28531697 0.24270512 0.050000012 0.17633557 0.30000001 0.050000012 0
		 0 -0.050000012 0 0 0.050000012 0;
	setAttr -s 50 ".ed[0:49]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 0 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 10 0 0 10 0 1 11 0 2 12 0 3 13 0 4 14 0 5 15 0 6 16 0 7 17 0 8 18 0 9 19 0
		 20 0 1 20 1 1 20 2 1 20 3 1 20 4 1 20 5 1 20 6 1 20 7 1 20 8 1 20 9 1 10 21 1 11 21 1
		 12 21 1 13 21 1 14 21 1 15 21 1 16 21 1 17 21 1 18 21 1 19 21 1;
	setAttr -s 30 -ch 100 ".fc[0:29]" -type "polyFaces" 
		f 4 0 21 -11 -21
		f 4 1 22 -12 -22
		f 4 2 23 -13 -23
		f 4 3 24 -14 -24
		f 4 4 25 -15 -25
		f 4 5 26 -16 -26
		f 4 6 27 -17 -27
		f 4 7 28 -18 -28
		f 4 8 29 -19 -29
		f 4 9 20 -20 -30
		f 3 -1 -31 31
		f 3 -2 -32 32
		f 3 -3 -33 33
		f 3 -4 -34 34
		f 3 -5 -35 35
		f 3 -6 -36 36
		f 3 -7 -37 37
		f 3 -8 -38 38
		f 3 -9 -39 39
		f 3 -10 -40 30
		f 3 10 41 -41
		f 3 11 42 -42
		f 3 12 43 -43
		f 3 13 44 -44
		f 3 14 45 -45
		f 3 15 46 -46
		f 3 16 47 -47
		f 3 17 48 -48
		f 3 18 49 -49
		f 3 19 40 -50;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2";
	rename -uid "A4D6D2C9-436B-A72F-0BB3-7685CFF1B775";
	setAttr ".t" -type "double3" -0.33801682512360914 0.66199171980843718 0.63142542293399262 ;
	setAttr ".r" -type "double3" 0 0 -45 ;
	setAttr ".s" -type "double3" 0.1544514686046195 0.91386049459843677 0.1544514686046195 ;
createNode transform -n "pCube7" -p "pCube2";
	rename -uid "4DAE0222-48BB-DCD8-D379-83957347EA51";
createNode transform -n "polySurface2" -p "pCube7";
	rename -uid "4FDCD0D4-4632-AD19-9565-3AB99CA547BD";
	setAttr ".s" -type "double3" 0.72070103325038881 1 0.72070103325038881 ;
createNode transform -n "polySurface2" -p "|pCube2|pCube7|polySurface2";
	rename -uid "D2036071-4756-6651-FC59-7D9009B53BC6";
	setAttr ".t" -type "double3" 0.052888080717371555 -0.0064420648183942421 9.9738548348160196e-16 ;
createNode mesh -n "polySurfaceShape2" -p "|pCube2|pCube7|polySurface2|polySurface2";
	rename -uid "01E8BC68-4AB5-0B19-314E-E7BFBBA8B84C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.66712552031768813 0.66712156056579985 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape15" -p "|pCube2|pCube7|polySurface2|polySurface2";
	rename -uid "C32B861C-4F96-D88F-DB10-ED86C13D9E2A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.50000048 0.50000048 -0.5 0.50000048
		 -0.49999905 0.49999994 0.50000048 0.50000095 0.49999994 0.50000048 -0.49999905 0.49999994 -0.49999952
		 0.50000095 0.49999994 -0.49999952 -0.5 -0.5 -0.49999952 0.50000048 -0.5 -0.49999952;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		f 4 2 9 -4 -9
		f 4 3 11 -1 -11
		f 4 -12 -10 -8 -6
		f 4 10 4 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform3" -p "pCube2";
	rename -uid "A79AD644-49EF-3033-79CF-639524852B2B";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform3";
	rename -uid "FB9DD11B-4DA8-C628-E1E4-04AF9A210701";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube3";
	rename -uid "46346F61-46DC-E929-79E0-5B84B11FB0F6";
	setAttr ".t" -type "double3" -0.33801682512360914 0.66199171980843718 -0.62219292268634874 ;
	setAttr ".r" -type "double3" 0 0 -45 ;
	setAttr ".s" -type "double3" 0.1544514686046195 0.91386049459843677 0.1544514686046195 ;
createNode mesh -n "polySurfaceShape2" -p "pCube3";
	rename -uid "B31E5DD9-4CFA-9D30-0589-9BB85F2D58D6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube9" -p "pCube3";
	rename -uid "67394C94-46B9-1693-BE34-DBA09FE79F1E";
createNode transform -n "polySurface4" -p "pCube9";
	rename -uid "43D8A428-4FD2-8858-40FD-ADBDD029F1F2";
	setAttr ".s" -type "double3" 0.72070103325038881 1 0.72070103325038881 ;
createNode transform -n "polySurface4" -p "|pCube3|pCube9|polySurface4";
	rename -uid "5C55F531-4B0B-E531-E78E-81B535D0ED46";
	setAttr ".t" -type "double3" 0.052888080717371555 -0.0064420648183942421 9.9738548348160196e-16 ;
	setAttr ".rp" -type "double3" 0 0 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 0 0 8.8817841970012523e-16 ;
createNode mesh -n "polySurfaceShape4" -p "|pCube3|pCube9|polySurface4|polySurface4";
	rename -uid "3D048A8D-456F-1BE5-DB74-E2ACF0D4B149";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.8912134272116139 1.0258270407168466 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape19" -p "|pCube3|pCube9|polySurface4|polySurface4";
	rename -uid "EE3D257D-4214-8E6F-1583-AB81A0C0380F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.50000048 0.50000048 -0.5 0.50000048
		 -0.49999905 0.49999994 0.50000048 0.50000095 0.49999994 0.50000048 -0.49999905 0.49999994 -0.49999952
		 0.50000095 0.49999994 -0.49999952 -0.5 -0.5 -0.49999952 0.50000048 -0.5 -0.49999952;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 0 5 -2 -5
		f 4 2 9 -4 -9
		f 4 3 11 -1 -11
		f 4 -12 -10 -8 -6
		f 4 10 4 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform5" -p "pCube3";
	rename -uid "3F8F5227-4630-340E-A593-F08F97C994E1";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform5";
	rename -uid "1AF5FF80-4FA6-0EB3-2CA0-219F56EA3C64";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube4";
	rename -uid "AA2BF6D6-4533-A692-35DB-8CBCA2D45B70";
	setAttr ".rp" -type "double3" 0 0.97521834053240819 0 ;
	setAttr ".sp" -type "double3" 0 0.97521834053240819 0 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "7FC41D3D-4664-C4ED-29F0-B2A1B4A5874F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.65582353404513272 0.11813349970577736 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape11" -p "pCube4";
	rename -uid "E83E0FAC-4999-BDBE-FE2B-3F82B1747C26";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.42324781 1.3984661 0.46744165 
		-0.42324781 1.3984661 0.46744165 0.42324781 0.55197054 0.46744165 -0.42324781 0.55197054 
		0.46744165 0.42324781 0.55197054 -0.46744165 -0.42324781 0.55197054 -0.46744165 0.42324781 
		1.3984661 -0.46744165 -0.42324781 1.3984661 -0.46744165;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		f 4 1 7 -3 -7
		f 4 2 9 -4 -9
		f 4 3 11 -1 -11
		f 4 -12 -10 -8 -6
		f 4 10 4 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder4";
	rename -uid "4AD2E24F-44F6-7B80-15FD-C9A1C4BFE0CD";
	setAttr ".t" -type "double3" 0.010923073715258913 0.039630984554551829 0 ;
	setAttr ".rp" -type "double3" -0.84217072388107439 0.27932701769473178 0.63137031726096193 ;
	setAttr ".sp" -type "double3" -0.84217072388107439 0.27932701769473178 0.63137031726096193 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	rename -uid "C7AD7BD8-48FA-08D4-273E-0BB2DCECF991";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.61660443626363426 0.40957378718918031 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape8" -p "pCylinder4";
	rename -uid "62B3E43E-40C7-509A-BF22-DDB0C4985841";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:29]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 10 "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 10 "e[0]" "e[4]" "e[7]" "e[10]" "e[13]" "e[16]" "e[19]" "e[22]" "e[25]" "e[28]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 11 "vtx[0]" "vtx[1]" "vtx[2]" "vtx[3]" "vtx[4]" "vtx[5]" "vtx[6]" "vtx[7]" "vtx[8]" "vtx[9]" "vtx[20]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 10 "vtx[0]" "vtx[1]" "vtx[2]" "vtx[3]" "vtx[4]" "vtx[5]" "vtx[6]" "vtx[7]" "vtx[8]" "vtx[9]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 20 "vtx[0]" "vtx[1]" "vtx[2]" "vtx[3]" "vtx[4]" "vtx[5]" "vtx[6]" "vtx[7]" "vtx[8]" "vtx[9]" "vtx[10]" "vtx[11]" "vtx[12]" "vtx[13]" "vtx[14]" "vtx[15]" "vtx[16]" "vtx[17]" "vtx[18]" "vtx[19]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 11 "vtx[10]" "vtx[11]" "vtx[12]" "vtx[13]" "vtx[14]" "vtx[15]" "vtx[16]" "vtx[17]" "vtx[18]" "vtx[19]" "vtx[21]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 10 "vtx[10]" "vtx[11]" "vtx[12]" "vtx[13]" "vtx[14]" "vtx[15]" "vtx[16]" "vtx[17]" "vtx[18]" "vtx[19]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 10 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 10 "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 10 "e[2]" "e[6]" "e[9]" "e[12]" "e[15]" "e[18]" "e[21]" "e[24]" "e[27]" "e[29]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  0.47265241 2.0795603 0.63137031 
		0.62265247 1.9295603 0.63137031 0.80806267 1.7441502 0.63137031 0.95806271 1.5941501 
		0.63137031 1.0153576 1.5368552 0.63137031 0.95806265 1.5941502 0.63137031 0.80806261 
		1.7441502 0.63137031 0.62265241 1.9295604 0.63137031 0.47265241 2.0795603 0.63137031 
		0.41535753 2.1368554 0.63137031 0.57265258 2.1795604 0.63137031 0.72265261 2.0295606 
		0.63137031 0.90806282 1.8441503 0.63137031 1.0580628 1.6941502 0.63137031 1.1153578 
		1.6368554 0.63137031 1.0580628 1.6941503 0.63137031 0.90806276 1.8441503 0.63137031 
		0.72265255 2.0295606 0.63137031 0.57265258 2.1795604 0.63137031 0.51535767 2.2368555 
		0.63137031 0.71535754 1.8368553 0.63137031 0.81535769 1.9368554 0.63137031;
	setAttr -s 22 ".vt[0:21]"  0.24270512 -1.55752826 -0.17633563 0.092705086 -1.55752826 -0.28531703
		 -0.092705145 -1.55752826 -0.285317 -0.24270517 -1.55752826 -0.17633557 -0.30000004 -1.55752826 0
		 -0.24270512 -1.55752826 0.17633563 -0.092705086 -1.55752826 0.285317 0.092705116 -1.55752826 0.28531694
		 0.24270512 -1.55752826 0.17633557 0.30000001 -1.55752826 0 0.24270512 -1.6575284 -0.17633563
		 0.092705086 -1.6575284 -0.28531703 -0.092705145 -1.6575284 -0.285317 -0.24270517 -1.6575284 -0.17633557
		 -0.30000004 -1.6575284 0 -0.24270512 -1.6575284 0.17633563 -0.092705086 -1.6575284 0.285317
		 0.092705116 -1.6575284 0.28531694 0.24270512 -1.6575284 0.17633557 0.30000001 -1.6575284 0
		 0 -1.55752826 0 0 -1.6575284 0;
	setAttr -s 50 ".ed[0:49]"  0 1 0 1 11 0 10 11 0 0 10 0 1 2 0 2 12 0
		 11 12 0 2 3 0 3 13 0 12 13 0 3 4 0 4 14 0 13 14 0 4 5 0 5 15 0 14 15 0 5 6 0 6 16 0
		 15 16 0 6 7 0 7 17 0 16 17 0 7 8 0 8 18 0 17 18 0 8 9 0 9 19 0 18 19 0 9 0 0 19 10 0
		 20 0 1 20 1 1 20 2 1 20 3 1 20 4 1 20 5 1 20 6 1 20 7 1 20 8 1 20 9 1 11 21 1 10 21 1
		 12 21 1 13 21 1 14 21 1 15 21 1 16 21 1 17 21 1 18 21 1 19 21 1;
	setAttr -s 30 -ch 100 ".fc[0:29]" -type "polyFaces" 
		f 4 3 2 -2 -1
		f 4 1 6 -6 -5
		f 4 5 9 -9 -8
		f 4 8 12 -12 -11
		f 4 11 15 -15 -14
		f 4 14 18 -18 -17
		f 4 17 21 -21 -20
		f 4 20 24 -24 -23
		f 4 23 27 -27 -26
		f 4 26 29 -4 -29
		f 3 -32 30 0
		f 3 -33 31 4
		f 3 -34 32 7
		f 3 -35 33 10
		f 3 -36 34 13
		f 3 -37 35 16
		f 3 -38 36 19
		f 3 -39 37 22
		f 3 -40 38 25
		f 3 -31 39 28
		f 3 41 -41 -3
		f 3 40 -43 -7
		f 3 42 -44 -10
		f 3 43 -45 -13
		f 3 44 -46 -16
		f 3 45 -47 -19
		f 3 46 -48 -22
		f 3 47 -49 -25
		f 3 48 -50 -28
		f 3 49 -42 -30;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6";
	rename -uid "72E22B64-4C7B-55B0-C142-F2B5B4B4E8A4";
	setAttr ".t" -type "double3" -0.61792467670013929 0.29435058985016871 0 ;
	setAttr ".s" -type "double3" 0.22234797114242094 0.22234797114242094 1.9348832716515003 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "7A84C72F-4DB8-FD93-9E55-66B96F9D9318";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube8";
	rename -uid "391E210D-496F-1E1C-D6CC-3395E573D65C";
	setAttr ".t" -type "double3" -0.33801682512360914 0.66199171980843718 0.63142542293399262 ;
	setAttr ".r" -type "double3" 0 0 -45.000000000000014 ;
	setAttr ".s" -type "double3" 0.1544514686046195 0.91386049459843677 0.1544514686046195 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	rename -uid "A032F44E-41A1-8803-DC62-0395F7E2E625";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder6";
	rename -uid "9FCDDD99-474E-ACB7-E31A-67AEE3BF151E";
	setAttr ".t" -type "double3" 0.010923073715258913 0.039630984554551829 0 ;
	setAttr ".rp" -type "double3" -0.84217072388107439 0.27932701769473178 -0.61039332526403145 ;
	setAttr ".sp" -type "double3" -0.84217072388107439 0.27932701769473178 -0.61039332526403145 ;
createNode mesh -n "pCylinderShape6" -p "pCylinder6";
	rename -uid "B4B516A1-4707-8562-485E-35AF7F7CD110";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape12" -p "pCylinder6";
	rename -uid "C3F02285-4232-0EA7-304E-2884A954B5BC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:29]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt[0:21]" -type "float3"  0.47265241 2.0795603 -0.61039335 
		0.62265247 1.9295603 -0.61039335 0.80806267 1.7441502 -0.61039335 0.95806271 1.5941501 
		-0.61039335 1.0153576 1.5368552 -0.61039335 0.95806265 1.5941502 -0.61039335 0.80806261 
		1.7441502 -0.61039335 0.62265241 1.9295604 -0.61039335 0.47265241 2.0795603 -0.61039335 
		0.41535753 2.1368554 -0.61039335 0.57265258 2.1795604 -0.61039335 0.72265261 2.0295606 
		-0.61039335 0.90806282 1.8441503 -0.61039335 1.0580628 1.6941502 -0.61039335 1.1153578 
		1.6368554 -0.61039335 1.0580628 1.6941503 -0.61039335 0.90806276 1.8441503 -0.61039335 
		0.72265255 2.0295606 -0.61039335 0.57265258 2.1795604 -0.61039335 0.51535767 2.2368555 
		-0.61039335 0.71535754 1.8368553 -0.61039335 0.81535769 1.9368554 -0.61039335;
	setAttr -s 22 ".vt[0:21]"  0.24270512 -1.55752826 -0.17633563 0.092705086 -1.55752826 -0.285317
		 -0.092705145 -1.55752826 -0.285317 -0.24270517 -1.55752826 -0.17633557 -0.30000004 -1.55752826 0
		 -0.24270512 -1.55752826 0.17633563 -0.092705086 -1.55752826 0.285317 0.092705116 -1.55752826 0.28531697
		 0.24270512 -1.55752826 0.17633557 0.30000001 -1.55752826 0 0.24270512 -1.6575284 -0.17633563
		 0.092705086 -1.6575284 -0.285317 -0.092705145 -1.6575284 -0.285317 -0.24270517 -1.6575284 -0.17633557
		 -0.30000004 -1.6575284 0 -0.24270512 -1.6575284 0.17633563 -0.092705086 -1.6575284 0.285317
		 0.092705116 -1.6575284 0.28531697 0.24270512 -1.6575284 0.17633557 0.30000001 -1.6575284 0
		 0 -1.55752826 0 0 -1.6575284 0;
	setAttr -s 50 ".ed[0:49]"  0 1 0 1 11 0 10 11 0 0 10 0 1 2 0 2 12 0
		 11 12 0 2 3 0 3 13 0 12 13 0 3 4 0 4 14 0 13 14 0 4 5 0 5 15 0 14 15 0 5 6 0 6 16 0
		 15 16 0 6 7 0 7 17 0 16 17 0 7 8 0 8 18 0 17 18 0 8 9 0 9 19 0 18 19 0 9 0 0 19 10 0
		 20 0 1 20 1 1 20 2 1 20 3 1 20 4 1 20 5 1 20 6 1 20 7 1 20 8 1 20 9 1 11 21 1 10 21 1
		 12 21 1 13 21 1 14 21 1 15 21 1 16 21 1 17 21 1 18 21 1 19 21 1;
	setAttr -s 30 -ch 100 ".fc[0:29]" -type "polyFaces" 
		f 4 3 2 -2 -1
		f 4 1 6 -6 -5
		f 4 5 9 -9 -8
		f 4 8 12 -12 -11
		f 4 11 15 -15 -14
		f 4 14 18 -18 -17
		f 4 17 21 -21 -20
		f 4 20 24 -24 -23
		f 4 23 27 -27 -26
		f 4 26 29 -4 -29
		f 3 -32 30 0
		f 3 -33 31 4
		f 3 -34 32 7
		f 3 -35 33 10
		f 3 -36 34 13
		f 3 -37 35 16
		f 3 -38 36 19
		f 3 -39 37 22
		f 3 -40 38 25
		f 3 -31 39 28
		f 3 41 -41 -3
		f 3 40 -43 -7
		f 3 42 -44 -10
		f 3 43 -45 -13
		f 3 44 -46 -16
		f 3 45 -47 -19
		f 3 46 -48 -22
		f 3 47 -49 -25
		f 3 48 -50 -28
		f 3 49 -42 -30;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube10";
	rename -uid "B7CAA26B-4241-3B7A-19F2-74B7DB0D58E2";
	setAttr ".t" -type "double3" -0.33801682512360914 0.66199171980843718 -0.62219292268634874 ;
	setAttr ".r" -type "double3" 0 0 -45.000000000000014 ;
	setAttr ".s" -type "double3" 0.1544514686046195 0.91386049459843677 0.1544514686046195 ;
createNode mesh -n "pCubeShape10" -p "pCube10";
	rename -uid "B825BB56-489E-422B-F5AB-BA824DAD4896";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder7";
	rename -uid "6BB4B90B-4FC8-2A8D-4EDA-F29AC57753B4";
	setAttr ".rp" -type "double3" 0 0.41769427801956727 0 ;
	setAttr ".sp" -type "double3" 0 0.41769427801956727 0 ;
createNode mesh -n "pCylinderShape7" -p "pCylinder7";
	rename -uid "63A0757E-4C13-B017-570E-AC8FE7D72901";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.59391218559436865 0.77939621874375431 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape14" -p "pCylinder7";
	rename -uid "C5AA2670-4987-C877-BA4B-54B4114D484B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[14:27]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:13]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:13]" "vtx[28]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:13]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:27]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[14:27]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[14:27]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:13]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[14:27]";
	setAttr ".pv" -type "double2" 0.5 0.84375002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 29 ".pt[0:28]" -type "float3"  0 1.4957933 -1.0095826 0 
		1.5584239 -0.94695199 0 1.5931813 -0.91219461 0 1.5931813 -0.91219461 0 1.558424 
		-0.94695199 0 1.4957933 -1.0095825 0 1.4176943 -1.0876817 0 1.3395952 -1.1657807 
		0 1.2769647 -1.2284113 0 1.2422073 -1.2631687 0 1.2422073 -1.2631687 0 1.2769645 
		-1.2284113 0 1.3395952 -1.1657807 0 1.4176943 -1.0876817 0 -0.50420672 1.1657807 
		0 -0.44157609 1.2284113 0 -0.40681872 1.2631687 0 -0.40681872 1.2631687 0 -0.44157603 
		1.2284113 0 -0.50420666 1.1657808 0 -0.58230567 1.0876817 0 -0.66040474 1.0095826 
		0 -0.7230354 0.94695199 0 -0.75779271 0.91219461 0 -0.75779277 0.91219461 0 -0.7230354 
		0.94695199 0 -0.6604048 1.0095825 0 -0.58230573 1.0876817 0 1.4176943 -1.0876817;
	setAttr -s 29 ".vt[0:28]"  0.1621744 -1 -0.078099027 0.11222819 -1 -0.14072964
		 0.040053803 -1 -0.17548701 -0.040053729 -1 -0.17548701 -0.11222813 -1 -0.14072968
		 -0.16217437 -1 -0.078099094 -0.17999999 -1 -3.2186509e-08 -0.1621744 -1 0.078099042
		 -0.11222818 -1 0.14072965 -0.040053789 -1 0.17548701 0.040053751 -1 0.17548703 0.11222816 -1 0.14072968
		 0.1621744 -1 0.078099079 0.18000001 -1 0 0.1621744 1 -0.078099027 0.11222819 1 -0.14072964
		 0.040053803 1 -0.17548701 -0.040053729 1 -0.17548701 -0.11222813 1 -0.14072968 -0.16217437 1 -0.078099094
		 -0.17999999 1 -3.2186509e-08 -0.1621744 1 0.078099042 -0.11222818 1 0.14072965 -0.040053789 1 0.17548701
		 0.040053751 1 0.17548703 0.11222816 1 0.14072968 0.1621744 1 0.078099079 0.18000001 1 0
		 0 -1 0;
	setAttr -s 56 ".ed[0:55]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 0 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 14 0 0 14 1
		 1 15 1 2 16 1 3 17 1 4 18 1 5 19 1 6 20 1 7 21 1 8 22 1 9 23 1 10 24 1 11 25 1 12 26 1
		 13 27 1 28 0 1 28 1 1 28 2 1 28 3 1 28 4 1 28 5 1 28 6 1 28 7 1 28 8 1 28 9 1 28 10 1
		 28 11 1 28 12 1 28 13 1;
	setAttr -s 28 -ch 98 ".fc[0:27]" -type "polyFaces" 
		f 4 0 29 -15 -29
		f 4 1 30 -16 -30
		f 4 2 31 -17 -31
		f 4 3 32 -18 -32
		f 4 4 33 -19 -33
		f 4 5 34 -20 -34
		f 4 6 35 -21 -35
		f 4 7 36 -22 -36
		f 4 8 37 -23 -37
		f 4 9 38 -24 -38
		f 4 10 39 -25 -39
		f 4 11 40 -26 -40
		f 4 12 41 -27 -41
		f 4 13 28 -28 -42
		f 3 -1 -43 43
		f 3 -2 -44 44
		f 3 -3 -45 45
		f 3 -4 -46 46
		f 3 -5 -47 47
		f 3 -6 -48 48
		f 3 -7 -49 49
		f 3 -8 -50 50
		f 3 -9 -51 51
		f 3 -10 -52 52
		f 3 -11 -53 53
		f 3 -12 -54 54
		f 3 -13 -55 55
		f 3 -14 -56 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface5";
	rename -uid "66A17097-4C07-64B2-7BAC-A3A8F9A983C3";
	setAttr ".t" -type "double3" 0 -0.0083256853106319362 1.1102230246251565e-16 ;
	setAttr ".rp" -type "double3" -0.33801682512360914 0.66199171980843718 0.63142542293399262 ;
	setAttr ".sp" -type "double3" -0.33801682512360914 0.66199171980843718 0.63142542293399262 ;
createNode mesh -n "polySurfaceShape5" -p "polySurface5";
	rename -uid "0FE15300-4EA6-2908-8B1F-E78D2F98CD16";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.58500055096635006 0.97329067568761995 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape20" -p "polySurface5";
	rename -uid "AEC4EE08-4019-F4FD-5F3B-74AACF2A72CF";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -7.6988673 -0.20574078 0.18708166 
		-7.7775779 -0.16264555 0.18708166 -0.13526161 0.44045621 0.18708166 -0.21397199 0.48355138 
		0.18708166 -0.13526161 0.44045621 1.0757684 -0.21397199 0.48355138 1.0757684 -7.6988673 
		-0.20574078 1.0757684 -7.7775779 -0.16264555 1.0757684;
	setAttr -s 8 ".vt[0:7]"  8.39933777 0.5839892 0.50000048 8.39933777 0.46218348 0.50000048
		 0.18953514 0.58398908 0.50000048 0.18953514 0.46218354 0.50000048 0.18953514 0.58398908 -0.49999952
		 0.18953514 0.46218354 -0.49999952 8.39933777 0.5839892 -0.49999952 8.39933777 0.46218348 -0.49999952;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 3 0 2 3 0 0 2 0 3 5 0 4 5 0 2 4 0
		 5 7 0 6 7 0 4 6 0 7 1 0 6 0 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 3 2 -2 -1
		f 4 9 8 -8 -6
		f 4 11 0 -11 -9
		f 4 1 4 7 10
		f 4 -10 -7 -4 -12;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface6";
	rename -uid "CF989B3F-4628-3C64-3F92-3A957DA4AD44";
	setAttr ".t" -type "double3" 0 -0.0083256853106319362 1.1102230246251565e-16 ;
	setAttr ".rp" -type "double3" -0.33801682512360914 0.66199171980843718 -0.62219292268634874 ;
	setAttr ".sp" -type "double3" -0.33801682512360914 0.66199171980843718 -0.62219292268634874 ;
createNode mesh -n "polySurfaceShape6" -p "polySurface6";
	rename -uid "8F595EC9-400C-7D43-5C65-29BFC7A004F5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49654331798582524 0.21013880221444925 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape18" -p "polySurface6";
	rename -uid "9790CAE9-4E89-21F9-4DBF-84842E33FC63";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -7.6988673 -0.20574078 -1.0665367 
		-7.7775779 -0.16264555 -1.0665367 -0.13526161 0.44045621 -1.0665367 -0.21397199 0.48355138 
		-1.0665367 -0.13526161 0.44045621 -0.17785001 -0.21397199 0.48355138 -0.17785001 
		-7.6988673 -0.20574078 -0.17785001 -7.7775779 -0.16264555 -0.17785001;
	setAttr -s 8 ".vt[0:7]"  8.39933777 0.5839892 0.50000048 8.39933777 0.46218348 0.50000048
		 0.18953514 0.58398908 0.50000048 0.18953514 0.46218354 0.50000048 0.18953514 0.58398908 -0.49999952
		 0.18953514 0.46218354 -0.49999952 8.39933777 0.5839892 -0.49999952 8.39933777 0.46218348 -0.49999952;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 3 0 2 3 0 0 2 0 3 5 0 4 5 0 2 4 0
		 5 7 0 6 7 0 4 6 0 7 1 0 6 0 0;
	setAttr -s 5 -ch 20 ".fc[0:4]" -type "polyFaces" 
		f 4 3 2 -2 -1
		f 4 9 8 -8 -6
		f 4 11 0 -11 -9
		f 4 1 4 7 10
		f 4 -10 -7 -4 -12;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface7";
	rename -uid "FA6AB94B-46AE-010E-A8A4-4192286D3009";
	setAttr ".rp" -type "double3" -0.70999698044933046 0.36285905758681841 0 ;
	setAttr ".sp" -type "double3" -0.70999698044933046 0.36285905758681841 0 ;
createNode mesh -n "polySurfaceShape7" -p "polySurface7";
	rename -uid "7279CAC9-47F9-E8DE-8A3F-37BAB7093FC2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.35802066145349998 0.35543056072784368 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape22" -p "polySurface7";
	rename -uid "4D0D5A81-4B2A-76B3-82B3-F287EC1814F8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -7.4698281 0.77552998 0.46744165 
		-6.644486 0.77552998 0.46744165 -7.4698281 -0.049811855 0.46744165 -6.644486 -0.049811855 
		0.46744165 -7.4698281 -0.049811855 -0.46744165 -6.644486 -0.049811855 -0.46744165 
		-7.4698281 0.77552998 -0.46744165 -6.644486 0.77552998 -0.46744165;
	setAttr -s 8 ".vt[0:7]"  8.190341 -0.5 0.5 7.190341 -0.5 0.5 8.190341 0.5 0.5
		 7.190341 0.5 0.5 8.190341 0.5 -0.5 7.190341 0.5 -0.5 8.190341 -0.5 -0.5 7.190341 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 3 0 2 3 0 0 2 0 3 5 0 4 5 0 2 4 0
		 5 7 0 6 7 0 4 6 0 7 1 0 6 0 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 3 2 -2 -1
		f 4 6 5 -5 -3
		f 4 9 8 -8 -6
		f 4 11 0 -11 -9
		f 4 1 4 7 10
		f 4 -10 -7 -4 -12;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube11";
	rename -uid "7ECA49C1-499C-530F-8741-C08D3CCEB6DE";
	setAttr ".rp" -type "double3" 0 0.38926113763510301 1.1825241833926643 ;
	setAttr ".sp" -type "double3" 0 0.38926113763510301 1.1825241833926643 ;
createNode mesh -n "pCubeShape11" -p "pCube11";
	rename -uid "E22679BD-4848-0DD4-7DD7-8FADFD07DD1D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.94364693760871887 0.71997091174125671 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape10" -p "pCube11";
	rename -uid "931DC321-44B4-95C7-371C-D9A82EBFAE0F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 4 "f[9:16]" "f[21:24]" "f[37:38]" "f[45:46]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 4 "f[0:8]" "f[22:24]" "f[28:30]" "f[39:44]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 4 "f[17:20]" "f[25:27]" "f[31]" "f[33]";
	setAttr ".pv" -type "double2" 0.52083124220371246 0.2916666716337204 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 44 ".pt[0:43]" -type "float3"  0 0.38926113 1.0682505 0 
		0.38926113 1.033397 0 0.38926113 1.033397 0 0.38926113 1.0682505 0 0.38926113 1.0682505 
		0 0.38926113 0.99903721 0 0.38926113 0.99903721 0 0.38926113 1.0682505 0 0.38926113 
		1.0682505 0 0.38926113 1.0682505 0 0.38926113 1.0682505 0 0.38926113 1.0682505 0 
		0.38926113 1.0682505 0 0.38926113 1.0682505 0 0.38926113 1.26498 0 0.38926113 1.26498 
		0 0.38926113 1.26498 0 0.38926113 1.26498 0 0.38926113 1.26498 0 0.38926113 1.26498 
		0 0.38926113 1.26498 0 0.38926113 1.26498 0 0.38926113 1.26498 0 0.38926113 1.26498 
		0 0.38926113 1.26498 0 0.38926113 1.26498 0 0.38926113 1.26498 0 0.38926113 1.26498 
		0 0.38926113 1.0682505 0 0.38926113 1.0682505 0 0.38926113 1.0682505 0 0.38926113 
		1.0682505 0 0.38926113 1.26498 0 0.38926113 1.26498 0 0.38926113 1.26498 0 0.38926113 
		1.26498 0 0.38926113 1.16668 0 0.38926113 1.16668 0 0.38926113 1.2670971 0 0.38926113 
		1.2670971 0 0.38926113 1.16668 0 0.38926113 1.16668 0 0.38926113 1.2670971 0 0.38926113 
		1.2670971;
	setAttr -s 44 ".vt[0:43]"  -0.185745 -0.17350796 0.25000024 -0.083333328 -0.25 0.32625037
		 0.083333343 -0.25 0.32625037 0.18574499 -0.17350796 0.25000024 -0.25 -0.083333313 0.25000024
		 -0.083333328 -0.083333313 0.40142035 0.083333343 -0.083333313 0.40142035 0.25 -0.083333313 0.25000024
		 -0.25 0.083333343 0.25000024 -0.083333328 0.083333343 0.25000024 0.083333343 0.083333343 0.25000024
		 0.25 0.083333343 0.25000024 -0.083333328 0.25 0.25000024 0.083333343 0.25 0.25000024
		 -0.083333328 0.25 -0.18039104 0.083333343 0.25 -0.18039104 -0.25 0.083333313 -0.18039104
		 -0.083333328 0.083333313 -0.18039104 0.083333343 0.083333313 -0.18039104 0.25 0.083333313 -0.18039104
		 -0.25 -0.083333343 -0.18039104 -0.083333328 -0.083333343 -0.18039104 0.083333343 -0.083333343 -0.18039104
		 0.25 -0.083333343 -0.18039104 -0.185745 -0.17350796 -0.18039104 -0.083333328 -0.25 -0.18039104
		 0.083333343 -0.25 -0.18039104 0.18574499 -0.17350796 -0.18039104 -0.25 0.16667503 0.25000024
		 -0.166675 0.25 0.25000024 0.166675 0.25 0.25000024 0.25 0.16667503 0.25000024 -0.25 0.16667503 -0.18039104
		 -0.166675 0.25 -0.18039104 0.25 0.16667503 -0.18039104 0.166675 0.25 -0.18039104
		 -0.2966446 0.35619926 0.034662962 -0.33242881 0.2728743 0.034662962 -0.29664457 0.35619926 -0.18502304
		 -0.33242881 0.2728743 -0.18502304 0.33786821 0.2728743 0.034662962 0.29120517 0.35619926 0.034662962
		 0.33786821 0.2728743 -0.18502304 0.29120517 0.35619926 -0.18502304;
	setAttr -s 90 ".ed[0:89]"  0 1 0 1 2 0 2 3 0 4 5 1 5 6 1 6 7 1 8 9 1
		 9 10 1 10 11 1 12 13 0 13 30 0 14 15 0 15 35 0 16 17 1 17 18 0 18 19 1 20 21 1 21 22 0
		 22 23 1 24 25 0 25 26 0 26 27 0 0 4 0 1 5 1 2 6 1 3 7 0 4 8 0 5 9 1 6 10 1 7 11 0
		 8 28 0 9 12 1 10 13 1 11 31 0 14 17 1 15 18 1 16 20 0 17 21 0 18 22 0 19 23 0 20 24 0
		 21 25 1 22 26 1 23 27 0 29 12 0 29 28 1 31 30 1 32 16 0 33 14 0 33 32 1 34 19 0 35 34 1
		 29 36 0 28 37 0 36 37 0 33 38 0 32 39 0 38 39 0 31 40 0 30 41 0 40 41 0 34 42 0 35 43 0
		 43 42 0 1 25 0 0 24 0 4 20 0 8 16 0 28 32 0 37 39 0 36 38 0 29 33 0 12 14 0 13 15 0
		 30 35 0 41 43 0 40 42 0 31 34 0 11 19 0 7 23 0 3 27 0 2 26 0 6 11 1 5 8 1 6 3 1 5 0 1
		 31 10 1 28 9 1 34 18 1 32 17 1;
	setAttr -s 47 -ch 176 ".fc[0:46]" -type "polyFaces" 
		f 3 0 23 85
		f 4 1 24 -5 -24
		f 3 84 25 -6
		f 3 3 83 -27
		f 4 4 28 -8 -28
		f 3 82 -9 -29
		f 4 87 31 -45 45
		f 4 7 32 -10 -32
		f 3 8 33 86
		f 4 11 35 -15 -35
		f 4 12 51 88 -36
		f 4 13 37 -17 -37
		f 4 15 39 -19 -39
		f 4 16 41 -20 -41
		f 4 17 42 -21 -42
		f 4 18 43 -22 -43
		f 3 89 -14 -48
		f 4 -46 52 54 -54
		f 4 49 56 -58 -56
		f 4 -47 58 60 -60
		f 4 -52 62 63 -62
		f 4 -1 65 19 -65
		f 4 22 66 40 -66
		f 4 26 67 36 -67
		f 4 30 68 47 -68
		f 4 53 69 -57 -69
		f 4 -55 70 57 -70
		f 4 -53 71 55 -71
		f 4 44 72 -49 -72
		f 4 9 73 -12 -73
		f 4 10 74 -13 -74
		f 4 59 75 -63 -75
		f 4 -61 76 -64 -76
		f 4 -59 77 61 -77
		f 4 -34 78 -51 -78
		f 4 -30 79 -40 -79
		f 4 -26 80 -44 -80
		f 4 -3 81 21 -81
		f 4 -2 64 20 -82
		f 3 5 29 -83
		f 3 -84 27 -7
		f 3 2 -85 -25
		f 3 -86 -4 -23
		f 4 -87 46 -11 -33
		f 3 6 -88 -31
		f 3 -89 50 -16
		f 4 -50 48 34 -90;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder8";
	rename -uid "A2FF0565-4AFA-4836-F1D1-0FA91CDFCE85";
	setAttr ".rp" -type "double3" 0 0.68427764265872848 0.63232061337893397 ;
	setAttr ".sp" -type "double3" 0 0.68427764265872848 0.63232061337893397 ;
createNode mesh -n "pCylinderShape8" -p "pCylinder8";
	rename -uid "0148ECEC-4F32-65A4-63BC-BEA18FE81373";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.65659320354077411 0.19514508996145569 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape13" -p "pCylinder8";
	rename -uid "61D1E5AE-4604-06A6-4542-9B9A84B6ED53";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:5]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:5]" "vtx[12]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:5]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[6:11]" "vtx[13]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[6:11]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:5]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[12:17]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[6:11]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  0 0.68427765 0.63232064 0 
		0.68427765 0.63232064 0 0.68427765 0.63232064 0 0.68427765 0.63232064 0 0.68427765 
		0.63232064 0 0.68427765 0.63232064 0 0.68427765 0.63232064 0 0.68427765 0.63232064 
		0 0.68427765 0.63232064 0 0.68427765 0.63232064 0 0.68427765 0.63232064 0 0.68427765 
		0.63232064 0 0.68427765 0.63232064 0 0.68427765 0.63232064;
	setAttr -s 14 ".vt[0:13]"  0.020000009 -0.22499999 -0.034641013 -0.019999994 -0.22499999 -0.03464102
		 -0.039999999 -0.22499999 -5.9604641e-09 -0.020000005 -0.22499999 0.034641016 0.019999998 -0.22499999 0.034641016
		 0.039999999 -0.22499999 0 0.020000009 0.22499999 -0.034641013 -0.019999994 0.22499999 -0.03464102
		 -0.039999999 0.22499999 -5.9604641e-09 -0.020000005 0.22499999 0.034641016 0.019999998 0.22499999 0.034641016
		 0.039999999 0.22499999 0 0 -0.22499999 0 0 0.22499999 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		f 4 1 14 -8 -14
		f 4 2 15 -9 -15
		f 4 3 16 -10 -16
		f 4 4 17 -11 -17
		f 4 5 12 -12 -18
		f 3 -1 -19 19
		f 3 -2 -20 20
		f 3 -3 -21 21
		f 3 -4 -22 22
		f 3 -5 -23 23
		f 3 -6 -24 18
		f 3 6 25 -25
		f 3 7 26 -26
		f 3 8 27 -27
		f 3 9 28 -28
		f 3 10 29 -29
		f 3 11 24 -30;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder9";
	rename -uid "B921F58B-45EB-93C5-591F-A88A8C2E081E";
	setAttr ".rp" -type "double3" 0 0.6774153181961351 -0.62497891928558602 ;
	setAttr ".sp" -type "double3" 0 0.6774153181961351 -0.62497891928558602 ;
createNode mesh -n "pCylinderShape9" -p "pCylinder9";
	rename -uid "68B3CB9F-4F68-A47B-E582-7585E5F1F76A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.46659516183581085 0.81206984232894608 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape21" -p "pCylinder9";
	rename -uid "053E3521-4B53-C5DC-0C0A-F697E77468B1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".pt[0:13]" -type "float3"  0 0.67741531 -0.6249789 0 
		0.67741531 -0.6249789 0 0.67741531 -0.6249789 0 0.67741531 -0.6249789 0 0.67741531 
		-0.6249789 0 0.67741531 -0.6249789 0 0.67741531 -0.6249789 0 0.67741531 -0.6249789 
		0 0.67741531 -0.6249789 0 0.67741531 -0.6249789 0 0.67741531 -0.6249789 0 0.67741531 
		-0.6249789 0 0.67741531 -0.6249789 0 0.67741531 -0.6249789;
	setAttr -s 14 ".vt[0:13]"  0.020000009 -0.22499999 -0.034641013 -0.019999994 -0.22499999 -0.03464102
		 -0.039999999 -0.22499999 -5.9604641e-09 -0.020000005 -0.22499999 0.034641016 0.019999998 -0.22499999 0.034641016
		 0.039999999 -0.22499999 0 0.020000009 0.22499999 -0.034641013 -0.019999994 0.22499999 -0.03464102
		 -0.039999999 0.22499999 -5.9604641e-09 -0.020000005 0.22499999 0.034641016 0.019999998 0.22499999 0.034641016
		 0.039999999 0.22499999 0 0 -0.22499999 0 0 0.22499999 0;
	setAttr -s 30 ".ed[0:29]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 12 0 1 12 1 1
		 12 2 1 12 3 1 12 4 1 12 5 1 6 13 1 7 13 1 8 13 1 9 13 1 10 13 1 11 13 1;
	setAttr -s 18 -ch 60 ".fc[0:17]" -type "polyFaces" 
		f 4 0 13 -7 -13
		f 4 1 14 -8 -14
		f 4 2 15 -9 -15
		f 4 3 16 -10 -16
		f 4 4 17 -11 -17
		f 4 5 12 -12 -18
		f 3 -1 -19 19
		f 3 -2 -20 20
		f 3 -3 -21 21
		f 3 -4 -22 22
		f 3 -5 -23 23
		f 3 -6 -24 18
		f 3 6 25 -25
		f 3 7 26 -26
		f 3 8 27 -27
		f 3 9 28 -28
		f 3 10 29 -29
		f 3 11 24 -30;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "145EEC2F-4A93-6BC1-0401-B9B87CA9AEDB";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "3049DF85-470F-E236-C0F4-52A956241747";
	setAttr ".version" 5;
	setAttr ".unifiedFilterSize" 2.5;
	setAttr ".denoiseEngine" 3;
	setAttr ".GIEnabled" yes;
	setAttr ".primaryGIEngine" 4;
	setAttr ".secondaryGIEngine" 2;
	setAttr ".numGIBounces" 4;
	setAttr ".shadingNormalAdaptionTechnique" 1;
	setAttr ".enableLegacyBlackBodyAndDispersionTechnique" no;
	setAttr ".enableLegacyMotionBlurSampling" no;
	setAttr ".enableLegacySSSGI" no;
	setAttr ".enableLegacyVolumePhase" no;
	setAttr ".enableOptiXRTOnSupportedGPUs" yes;
	setAttr ".enableAutomaticSampling" yes;
createNode RedshiftPostEffects -n "defaultRedshiftPostEffects";
	rename -uid "8FEE54C7-4B1E-2C2B-5784-DFAC5A5CB63A";
	setAttr ".v" 2;
	setAttr -s 2 ".cr[1]" -type "float2" 1 1;
	setAttr -s 2 ".cg[1]" -type "float2" 1 1;
	setAttr -s 2 ".cb[1]" -type "float2" 1 1;
	setAttr -s 2 ".cl[1]" -type "float2" 1 1;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "CB902827-4B12-DCEC-76E5-F2B2DFDC2A67";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "547F9AB1-4271-E738-8AE0-2B8E7D9B398A";
createNode displayLayerManager -n "layerManager";
	rename -uid "AABFDBEC-417F-F7CB-20EB-6893AC57648C";
createNode displayLayer -n "defaultLayer";
	rename -uid "1659467C-4F5D-427A-9222-DE8FFA47445B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "FA44C43B-48CD-59FB-C604-549E66924F46";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "9FAD9F93-495F-0901-7F14-3A8EEA800A7C";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "071A2A26-4B2F-E5F9-611C-0E9CBF508D28";
	setAttr ".cuv" 4;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "9E61D039-4E41-A15E-2D75-2584FA5CF9C6";
	setAttr ".r" 0.3;
	setAttr ".h" 0.1;
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCube -n "polyCube2";
	rename -uid "6D50D625-41CD-341F-ED5A-11BEED90FA82";
	setAttr ".cuv" 4;
createNode polyMirror -n "polyMirror1";
	rename -uid "CA3FD412-4F58-B0DA-5C25-7EA907B32DA3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 -0.80376419347269723 0.24539046716659008 0.63137031726096193 1;
	setAttr ".ws" yes;
	setAttr ".mm" 0;
	setAttr ".fnf" 30;
	setAttr ".lnf" 59;
createNode polyMirror -n "polyMirror2";
	rename -uid "24C5F2D5-4025-212B-52C0-F6B7521F20FF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.22234797114242094 0 0 0 0 0.22234797114242094 0 0
		 0 0 1.9348832716515003 0 -0.61792467670013929 0.29435058985016871 0 1;
	setAttr ".ws" yes;
	setAttr ".mm" 0;
	setAttr ".fnf" 6;
	setAttr ".lnf" 11;
createNode polyMirror -n "polyMirror3";
	rename -uid "3394F85F-4F85-4BC2-A802-4BBE9C4AB894";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.10921368081454759 -0.1092136808145476 0 0 0.64619695278904699 0.64619695278904687 0 0
		 0 0 0.1544514686046195 0 -0.33801682512360914 0.66199171980843718 0.63142542293399262 1;
	setAttr ".ws" yes;
	setAttr ".mm" 0;
	setAttr ".fnf" 6;
	setAttr ".lnf" 11;
createNode polyMirror -n "polyMirror5";
	rename -uid "59672B2C-45F4-713F-D376-A6BED6F8BCDB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.10921368081454759 -0.1092136808145476 0 0 0.64619695278904699 0.64619695278904687 0 0
		 0 0 0.1544514686046195 0 -0.33801682512360914 0.66199171980843718 -0.62219292268634874 1;
	setAttr ".ws" yes;
	setAttr ".mm" 0;
	setAttr ".fnf" 6;
	setAttr ".lnf" 11;
createNode polySeparate -n "polySeparate2";
	rename -uid "8756D747-4126-803E-E4C7-85B26A52D945";
	setAttr ".ic" 2;
	setAttr ".uss" yes;
	setAttr ".inp" yes;
createNode groupId -n "groupId5";
	rename -uid "4F69AA5F-49BF-6DC5-A376-50968BD88BF9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "75A7BE4B-4888-CEA6-1BCA-478A3A9C6CB7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId6";
	rename -uid "C3665BC6-4181-D119-6A33-348B8C65401C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "FEFC48D2-4669-B7DA-7332-2E95CDEE5C8E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "45EBB2AE-42B8-AD46-7471-8FB0A08FC225";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode polySeparate -n "polySeparate3";
	rename -uid "D033F4DD-4BE6-A91D-EE86-2A9379D822A6";
	setAttr ".ic" 2;
	setAttr ".uss" yes;
	setAttr ".inp" yes;
createNode groupId -n "groupId9";
	rename -uid "66BF8AA9-4E5F-3DF0-99AE-A3BC8CD82FA9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "3857158D-406D-F7D3-95E8-6CA55D34C0F9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId10";
	rename -uid "539B02CD-4022-8985-79AE-F7AF3BB79580";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "66070187-4C9E-D541-639E-42BD2B2F6DEC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "58798D06-4742-09BA-392F-45BCD5D9EDCC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode polySeparate -n "polySeparate5";
	rename -uid "DB4B7D89-4EA2-2585-2ABB-D59A247A451A";
	setAttr ".ic" 2;
	setAttr ".uss" yes;
	setAttr ".inp" yes;
createNode groupId -n "groupId17";
	rename -uid "50322771-48EA-908F-08FE-2C9D518EFDAE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "2BA80414-40D5-B701-9A04-438A12EF6710";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId18";
	rename -uid "8D46C89B-4F2B-B461-9010-548A58629D39";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	rename -uid "0133F124-4577-0FD6-9E09-2BBEA32D01CD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "CF8631DB-457C-115A-2768-158237C1DF3C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "CB6D9552-41BB-5F07-005C-6681E5D4A138";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1054\n            -height 873\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1054\\n    -height 873\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1054\\n    -height 873\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "100D7292-4F1D-43D1-FBE5-6BB5BC030D85";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 50 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "07613A22-4A2E-6AFA-493E-F0BC9CAE7677";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.488139271736145 2.488139271736145 2.488139271736145 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode groupId -n "groupId41";
	rename -uid "E4BC6BAA-4C79-46DF-8F5E-F882D053A82D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "C5AE7595-45D4-B407-B6EB-2B9D79D41AA6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "E6EBA787-4640-4C68-96CB-849A2C364425";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:29]";
	setAttr ".ix" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 -0.80376419347269723 0.24539046716659008 -0.61039332526403145 1;
	setAttr ".s" -type "double3" 2.488139271736145 2.488139271736145 2.488139271736145 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode groupId -n "groupId42";
	rename -uid "D647B0F3-4B27-C2F6-545F-C58345407C80";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "63B916EE-4035-153F-40CF-76BD8645FE59";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode polyAutoProj -n "polyAutoProj3";
	rename -uid "94292D68-4F1B-8440-3302-47891DBDB2ED";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:46]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.488139271736145 2.488139271736145 2.488139271736145 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj4";
	rename -uid "EE1B8CBC-463D-0A45-2E57-AA8DDAB6C759";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.488139271736145 2.488139271736145 2.488139271736145 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj5";
	rename -uid "CB67A3F6-42ED-7C81-D9DE-5F91EA79F7A1";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.488139271736145 2.488139271736145 2.488139271736145 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode groupId -n "groupId43";
	rename -uid "E48358E9-47DD-7854-CFDB-4E9C189977A7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "0C2DDFAD-448A-DCBB-EC70-398D664D1363";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode polyAutoProj -n "polyAutoProj6";
	rename -uid "5D8F43F7-4F87-9C3A-5926-428435DE642F";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.488139271736145 2.488139271736145 2.488139271736145 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj7";
	rename -uid "D001FCB6-4620-4492-1D78-1181B3800130";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:27]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.488139271736145 2.488139271736145 2.488139271736145 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj8";
	rename -uid "5DA830A6-47AB-FC81-9122-878B4892F3C0";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 0.078710412608122615 -0.078710412608122629 0 0 0.64619695278904699 0.64619695278904687 0 0
		 0 0 0.11131333301038926 0 -0.33801682512360914 0.66199171980843718 0.63142542293399262 1;
	setAttr ".s" -type "double3" 2.488139271736145 2.488139271736145 2.488139271736145 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode groupId -n "groupId44";
	rename -uid "7F58F53E-47EF-E42B-BB11-C18461710247";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	rename -uid "BF681172-48B2-42FA-9871-B5BFC56ED162";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode polyAutoProj -n "polyAutoProj9";
	rename -uid "4193407F-4FA5-0C7B-54D2-208F6C45A6D3";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 0.17465817658987676 0 0 0 0 0.17465817658987676 0 0
		 0 0 1.9348832716515003 0 -0.6715904500409533 0.32892250705867671 0 1;
	setAttr ".s" -type "double3" 2.488139271736145 2.488139271736145 2.488139271736145 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode groupId -n "groupId45";
	rename -uid "52FCD1DF-43B9-D0C2-9B06-B38316AFBB7A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "D321A7B1-40A5-AA82-9094-ABA5F1F33F48";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyAutoProj -n "polyAutoProj10";
	rename -uid "57F628CC-49A5-1CAC-2419-A0A3EC8E67EE";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:29]";
	setAttr ".ix" -type "matrix" 0 1 0 0 -1 0 0 0 0 0 1 0 -0.80376419347269723 0.24539046716659008 0.63137031726096193 1;
	setAttr ".s" -type "double3" 2.488139271736145 2.488139271736145 2.488139271736145 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode groupId -n "groupId46";
	rename -uid "B696E2CD-4D1D-764D-EC87-C2B1F348626B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	rename -uid "67DBC4E8-4C32-1B34-CC4A-A68CDA4966D5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode polyAutoProj -n "polyAutoProj11";
	rename -uid "26141A3A-4D05-75F1-DBC8-C38D8975EE88";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.488139271736145 2.488139271736145 2.488139271736145 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode groupId -n "groupId47";
	rename -uid "188629C8-4FFF-3624-C054-9F8B66755F04";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "1D4AF27D-4D39-6F7C-CB93-1594BBE5678D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode polyAutoProj -n "polyAutoProj12";
	rename -uid "B6A7436C-4308-FB63-4C12-B190E3F2BF2F";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 0.078710412608122615 -0.078710412608122629 0 0 0.64619695278904699 0.64619695278904687 0 0
		 0 0 0.11131333301038926 0 -0.33801682512360914 0.66199171980843718 -0.62219292268634874 1;
	setAttr ".s" -type "double3" 2.488139271736145 2.488139271736145 2.488139271736145 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode groupId -n "groupId48";
	rename -uid "FB86DAF8-4EC8-211A-A338-AFBE9ECB8AA5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	rename -uid "D4919045-4010-983C-F4A2-30BCD5D761A5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode polyAutoProj -n "polyAutoProj13";
	rename -uid "6D46C567-43D0-F386-5E40-FFB63EA87D9C";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.488139271736145 2.488139271736145 2.488139271736145 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode groupId -n "groupId49";
	rename -uid "E6E10691-4E94-A2AE-039E-A0A030A9878B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "8975F1AD-4511-C5EC-90C8-C9B587898AA7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode polyAutoProj -n "polyAutoProj14";
	rename -uid "CC36775A-449E-CBAC-9708-BCBD47BF90CC";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.488139271736145 2.488139271736145 2.488139271736145 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj15";
	rename -uid "1503CE3D-4087-8A17-BC31-3BA27DB6B3FC";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 2.488139271736145 2.488139271736145 2.488139271736145 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode groupId -n "groupId50";
	rename -uid "FCF3CD2A-4D7D-E2E0-CC53-2E9C5592E45B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	rename -uid "7C323E25-4584-34B1-EE27-3AB32E3E9D3C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "510959D8-491C-0CE7-BD06-39B9F6794AAC";
	setAttr ".uopa" yes;
	setAttr -s 50 ".uvtk[0:49]" -type "float2" 0.17411539 0.25452992 0.00046456605
		 0.31095234 0.10778662 0.16323639 0.17411539 0.36737487 0.00046456605 0.12836514 0.10778662
		 0.45866868 -0.10685757 0.16323639 0.00046456605 0.49353975 -0.17318623 0.25452986
		 -0.10685763 0.45866874 -0.17318623 0.36737487 -0.73231328 -0.15255915 -0.62499106
		 -0.004842842 -0.7986418 -0.061265439 -0.62499106 -0.18743022 -0.7986418 0.051579665
		 -0.51766878 -0.15255915 -0.73231304 0.14287339 -0.45134017 -0.061265439 -0.62499106
		 0.17774461 -0.45134017 0.051579665 -0.51766878 0.14287327 0.22322652 -0.27058506
		 0.16542068 -0.27058506 0.16542068 -0.3725172 0.22322652 -0.3725172 0.22322652 -0.20758766
		 0.16542068 -0.20758766 0.16542068 -0.47444919 0.22322652 -0.47444919 0.16542068 -0.53744662
		 0.22322652 -0.53744662 0.078299895 -0.27053922 0.020494193 -0.27053922 0.020494193
		 -0.37247136 0.078299895 -0.37247136 0.078299895 -0.20754179 0.020494193 -0.20754179
		 0.020494193 -0.47440347 0.078299895 -0.47440347 0.020494193 -0.5374009 0.078299895
		 -0.5374009 0.38115889 -0.060587123 0.32029641 -0.060587123 0.32029641 -0.1734325
		 0.38115889 -0.1734325 -0.088681296 -0.10941605 -0.14954376 -0.10941605 -0.14954376
		 -0.22226121 -0.088681296 -0.22226121;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "D4D23770-47BC-7BC5-822C-09BAAF92846E";
	setAttr ".uopa" yes;
	setAttr -s 50 ".uvtk[0:49]" -type "float2" 0.29273987 -0.47264948 0.29273987
		 -0.3707175 0.23493409 -0.3707175 0.23493409 -0.47264948 0.29273987 -0.26878533 0.23493409
		 -0.26878533 0.29273987 -0.53564703 0.23493409 -0.53564703 0.29273987 -0.20578781
		 0.23493409 -0.20578781 0.2325739 -0.47264966 0.2325739 -0.37071756 0.17476812 -0.37071756
		 0.17476812 -0.47264966 0.2325739 -0.26878533 0.17476812 -0.26878533 0.2325739 -0.53564727
		 0.17476812 -0.53564727 0.2325739 -0.20578781 0.17476812 -0.20578781 0.20396817 0.49312276
		 0.13763949 0.58441645 0.030317254 0.4367002 0.030317254 0.61928749 0.20396817 0.38027748
		 -0.077004999 0.58441645 0.13763933 0.28898373 -0.14333375 0.49312276 0.030317254
		 0.25411275 -0.14333387 0.38027754 -0.077005059 0.28898373 -0.72333199 -0.10895336
		 -0.78966075 -0.20024712 -0.61600977 -0.25666961 -0.78966075 -0.31309226 -0.61600977
		 -0.074082293 -0.72333199 -0.40438589 -0.5086875 -0.10895336 -0.61600977 -0.43925706
		 -0.44235879 -0.20024712 -0.5086875 -0.40438589 -0.44235879 -0.31309208 0.35121575
		 -0.0192637 0.35121575 -0.13210854 0.41207832 -0.13210854 0.41207832 -0.0192637 -0.088680729
		 -0.024336662 -0.088680729 0.088508554 -0.14954321 0.088508554 -0.14954321 -0.024336662;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "EC0C5646-4733-9C61-E328-9A865302CEA1";
	setAttr ".uopa" yes;
	setAttr -s 87 ".uvtk[0:86]" -type "float2" 0.0031023212 0.10106625 0.0031023212
		 0.022477228 0.11328208 0.022477228 0.11328208 0.10106637 0.0031023212 -0.01682128
		 0.11328208 -0.01682128 0.0031023212 0.14358672 0.11328208 0.14358672 0.058228433
		 -0.066897854 0.11446766 -0.066897854 -0.016417379 0.17965537 0.11328208 0.17965537
		 0.0031023212 -0.056111891 0.058228433 -0.10618857 0.11446766 -0.10618857 0.066893242
		 -0.5437386 0.066893242 -0.50399899 0.010011109 -0.50399899 0.010011109 -0.5437386
		 0.1226492 -0.4533501 0.011210652 -0.4533501 0.1226492 -0.4136025 0.011210652 -0.4136025
		 0.1226492 -0.33411542 0.011210652 -0.33411536 0.1226492 -0.29110906 0.011210652 -0.29110906
		 0.14239216 -0.25462821 0.011210652 -0.25462821 0.33898792 -0.32584777 0.33898792
		 -0.28529689 0.22529724 -0.28529689 0.22529724 -0.32584777 0.33898792 -0.20420352
		 0.22529724 -0.20420352 0.28210506 -0.38908574 0.2240735 -0.38908574 0.33898792 -0.16365275
		 0.22529724 -0.16365275 0.28210506 -0.10306123 0.2240735 -0.10306123 0.52368319 -0.23993273
		 0.60697764 -0.23993273 0.60697764 -0.10246702 0.52368319 -0.10246702 0.33669382 0.18126278
		 0.28658038 0.21869285 0.28658038 0.13713723 0.20502456 0.21869285 0.20502456 0.13713723
		 0.36813593 0.13713723 0.15491121 0.18126278 0.20502456 0.055581663 0.28658038 0.055581663
		 0.36813593 0.055581663 0.12346904 0.13713723 0.12346904 0.055581663 0.20502456 -0.025973964
		 0.28658038 -0.025973964 0.12346904 0.014799848 0.16424279 -0.025973964 0.36813593
		 0.014799848 0.32736218 -0.025973964 0.080472186 -0.037167098 0.10330595 -0.077940792
		 0.76751643 0.25887859 0.76751643 0.3421734 0.68422192 0.3421734 0.68422192 0.25887859
		 0.76751643 0.38382465 0.72587305 0.42546779 0.72587305 0.17558432 0.76751643 0.21722749
		 0.82059127 0.44606072 0.77894801 0.46938139 0.68422192 0.42546779 0.77894801 0.13438904
		 0.82059127 0.15227294 0.68422192 0.17558432 0.60092729 0.42546779 0.60092729 0.3421734
		 0.60092729 0.25887859 0.60092729 0.17558432 0.55586094 0.39335525 0.51763284 0.3421734
		 0.51763284 0.25887859 0.55586094 0.20769668;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "7F858BF2-4D80-70EF-5689-D09511A385E7";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" -0.16428882 -0.94367588 0.25806195
		 0.051598445 0.17910156 0.085105792 -0.24324934 -0.91016847 0.18678114 -0.89625722
		 0.60913217 0.099016979 0.53017193 0.13252439 0.1078207 -0.86274999 0.42933902 0.088310853
		 0.35037875 0.12181832 -0.071972877 -0.87345606 0.0069875205 -0.90696329 0.34194383
		 0.0097008497 0.26289994 0.043208256 -0.15945157 -0.95311826 -0.080407858 -0.98662567
		 -0.32573566 0.55167431 -0.37124744 0.55167431 -0.37124744 0.50616235 -0.32573566
		 0.50616235 0.029486179 0.43331897 0.029486179 0.47883087 -0.016025543 0.47883087
		 -0.016025543 0.43331897;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "58EA967E-41D0-DE39-729B-9D9304E27BE9";
	setAttr ".uopa" yes;
	setAttr -s 50 ".uvtk[0:49]" -type "float2" 0.033380691 0.052248191 -0.14027011
		 0.10867075 -0.032948017 -0.039045468 0.033380691 0.16509338 -0.14027011 -0.073916622
		 -0.032948017 0.25638708 -0.24759224 -0.039045468 -0.14027011 0.29125795 -0.31392086
		 0.052248131 -0.24759224 0.25638697 -0.31392086 0.16509338 -0.68494999 -0.28147617
		 -0.57762802 -0.1337599 -0.75127876 -0.1901827 -0.57762802 -0.31634745 -0.75127876
		 -0.077337407 -0.47030583 -0.28147617 -0.68494999 0.013956241 -0.40397707 -0.1901827
		 -0.57762802 0.048827279 -0.40397707 -0.077337407 -0.47030583 0.013956122 0.25147989
		 -0.27060807 0.19367419 -0.27060807 0.19367419 -0.37254009 0.25147989 -0.37254009
		 0.25147989 -0.20761061 0.19367419 -0.20761061 0.19367419 -0.47447208 0.25147989 -0.47447208
		 0.19367419 -0.53746957 0.25147989 -0.53746957 0.10655342 -0.27056217 0.048747554
		 -0.27056217 0.048747554 -0.37249419 0.10655342 -0.37249419 0.10655342 -0.20756474
		 0.048747554 -0.20756474 0.048747554 -0.47442606 0.10655342 -0.47442606 0.048747554
		 -0.53742349 0.10655342 -0.53742349 0.30045083 -0.021040764 0.23958841 -0.021040764
		 0.23958841 -0.13388604 0.30045083 -0.13388604 0.039259024 -0.0045686308 -0.021603383
		 -0.0045686308 -0.021603383 -0.11741374 0.039259024 -0.11741374;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "CAFD7E11-4BDF-AFF6-EEEC-BB83892F5550";
	setAttr ".uopa" yes;
	setAttr -s 34 ".uvtk[0:33]" -type "float2" 0.49785566 0.14485639 0.42930782
		 0.14485639 0.42930782 -0.7456072 0.49785566 -0.7456072 0.36075974 0.14485639 0.36075974
		 -0.7456072 0.2611655 0.14485639 0.19261754 0.14485639 0.19261754 -0.74560708 0.2611655
		 -0.74560708 0.12406993 0.14485639 0.12406993 -0.74560708 -0.22940497 0.050524358
		 -0.22940497 0.1303279 -0.29851669 0.090426005 -0.29851669 0.17022939 -0.29851669
		 0.010622663 -0.36762846 0.1303279 -0.36762846 0.050524358 -0.72238201 0.095441051
		 -0.72238201 0.015637375 -0.65327024 0.055539235 -0.65327024 -0.024264488 -0.65327024
		 0.13534291 -0.58415854 0.015637375 -0.58415854 0.095441051 0.55338514 -0.75293201
		 0.63318861 -0.75293201 0.63318861 0.14485672 0.55338514 0.14485672 0.39397866 0.14403917
		 0.31417525 0.14403917 0.31417525 -0.75374937 0.39397866 -0.75374937;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "318A080E-4A64-6433-86E6-E6BEF0C4AB54";
	setAttr ".uopa" yes;
	setAttr -s 51 ".uvtk[0:50]" -type "float2" 0.16964668 -0.065834805 0.20541418
		 -0.047645137 -0.30123848 0.94861966 -0.33700597 0.93043011 0.2411817 -0.029455721
		 -0.26547092 0.96680933 0.14096341 -0.080421969 -0.36568934 0.91584307 0.26986507
		 -0.014868796 -0.23678756 0.98139638 -0.020856451 0.89804119 -0.056623951 0.87985176
		 0.45002869 -0.11641334 0.48579615 -0.09822394 -0.092391446 0.86166209 0.41426116
		 -0.13460316 0.0078269718 0.91262823 0.51447964 -0.083636984 -0.12107493 0.84707505
		 0.38557768 -0.14919017 0.60746175 -0.27127236 0.64051557 -0.25497061 0.13363215 0.74129474
		 0.10057825 0.72499287 0.6772027 -0.23687704 0.17031923 0.75938833 0.71025658 -0.22057517
		 0.20337316 0.77569008 -0.041069992 0.83006477 -0.074123889 0.81376314 0.43275952
		 -0.18250231 0.46581334 -0.16620056 -0.11081105 0.79566956 0.39607239 -0.20059587
		 -0.14386496 0.7793678 0.36301845 -0.21689744 -0.48109612 0.11910748 -0.49610114 0.13107349
		 -0.51481199 0.092220031 -0.51481199 0.13534427 -0.47276902 0.10181608 -0.53352296
		 0.13107349 -0.47276902 0.082624011 -0.54852796 0.11910748 -0.48109612 0.065332524
		 -0.55685484 0.10181608 -0.49610114 0.053366501 -0.55685484 0.082623892 -0.51481199
		 0.049095724 -0.54852778 0.065332524 -0.53352296 0.053366501;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "29F23E5C-42AA-E69F-51D1-B98381B4516B";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[0:19]" -type "float2" 0.21869728 0.23779106 0.21869728
		 0.50018144 -0.043693006 0.50018144 -0.043693006 0.23779106 0.6194151 -0.10581964
		 0.6194151 0.15657073 0.35702482 0.15657073 0.35702482 -0.10581964 -0.25456101 -0.28041586
		 -0.25456101 0.02568686 -0.56066358 0.02568686 -0.56066358 -0.28041586 0.51522034
		 0.28355387 0.51522034 0.54594433 0.25283006 0.54594439 0.25283006 0.28355408 0.14126131
		 0.5006609 0.14126131 0.76305121 -0.12112916 0.76305121 -0.12112916 0.50066054;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "DBCB9797-418A-45E3-B65B-5FA905445306";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" 0.53159565 0.21125951 0.51431596
		 0.21125951 0.51431596 -0.085912205 0.53159565 -0.085912205 0.19489351 0.1741686 0.17761344
		 0.1741686 0.17761344 -0.12300321 0.19489351 -0.12300321 0.19276385 0.65907377 0.19276385
		 0.95624572 0.17548378 0.95624572 0.17548378 0.65907377 0.24911238 0.28890878 0.24911238
		 0.58608091 0.23183241 0.58608091 0.23183241 0.28890878 0.47625145 0.14615262 0.47625145
		 0.4375076 0.18489626 0.4375076 0.18489626 0.14615262 -0.35532343 -0.13606015 -0.64667851
		 -0.13606015 -0.64667851 -0.42741528 -0.35532343 -0.42741528;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "C436F6FF-49DD-F1D4-591C-2DB1AD164641";
	setAttr ".uopa" yes;
	setAttr -s 50 ".uvtk[0:49]" -type "float2" 0.13846624 -0.47438064 0.13846624
		 -0.37244853 0.080660507 -0.37244853 0.080660507 -0.47438064 0.13846624 -0.27051646
		 0.080660507 -0.27051646 0.13846624 -0.53737825 0.080660507 -0.53737825 0.13846624
		 -0.20751894 0.080660507 -0.20751894 0.26082739 -0.47264966 0.26082739 -0.37071756
		 0.20302162 -0.37071756 0.20302162 -0.47264966 0.26082739 -0.26878533 0.20302162 -0.26878533
		 0.26082739 -0.53564703 0.20302162 -0.53564703 0.26082739 -0.20578781 0.20302162 -0.20578781
		 0.13573322 0.24446538 0.06940449 0.33575901 -0.0379177 0.18804272 -0.0379177 0.37063006
		 0.13573322 0.13162012 -0.14524001 0.33575901 0.069404326 0.040326338 -0.21156867
		 0.24446538 -0.0379177 0.0054553021 -0.21156879 0.13162012 -0.14524004 0.040326338
		 -0.56500542 -0.28705665 -0.63133419 -0.37835029 -0.45768324 -0.43477276 -0.63133419
		 -0.49119547 -0.45768324 -0.25218558 -0.56500542 -0.58248913 -0.35036099 -0.28705665
		 -0.45768324 -0.61736029 -0.28403246 -0.37835029 -0.35036099 -0.58248913 -0.28403223
		 -0.49119535 0.16122523 -0.020994689 0.16122523 -0.13383955 0.22208771 -0.13383955
		 0.22208771 -0.020994689 0.52555281 -0.13210884 0.52555281 -0.019263759 0.46469027
		 -0.019263759 0.46469027 -0.13210884;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "E4CF5CD2-47A6-0F5D-8F0A-C181553CD9DC";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" -0.17044622 0.12395176 0.13579895
		 -0.18229342 0.17310132 -0.14499107 -0.13314372 0.16125415 -0.17138356 -0.64484453
		 -0.47762859 -0.3385995 -0.51493108 -0.375902 -0.20868576 -0.68214703 0.23367083 0.39166597
		 0.30983648 0.36379722 0.32954273 0.41765442 0.25337705 0.44552317 0.071886875 -0.050491542
		 0.14805248 -0.078360304 0.16775858 -0.024503201 0.091592871 0.0033655539;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "9E784551-4BF3-5ECB-B71E-E6A5C0A0C545";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[0:19]" -type "float2" -0.25930959 0.2476511 -0.25930959
		 0.51004148 -0.52169985 0.51004148 -0.52169985 0.2476511 0.12529565 -0.1031065 0.12529565
		 0.15928388 -0.13709463 0.15928388 -0.13709463 -0.1031065 -0.46133924 -0.40137431
		 -0.46133924 -0.095271587 -0.76744181 -0.095271587 -0.76744181 -0.40137431 0.17094801
		 0.49300227 0.17094801 0.75539267 -0.091442287 0.75539279 -0.091442287 0.49300247
		 0.21215671 0.56065887 0.21215671 0.82304919 -0.050233781 0.82304919 -0.050233781
		 0.56065857;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "1AFC2AE5-4C3C-31B5-2C2B-A0AB6EC72FF9";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" -0.21072769 0.12395176 0.095517471
		 -0.18229342 0.13281983 -0.14499107 -0.1734252 0.16125415 -0.21166503 -0.64484453
		 -0.51791012 -0.3385995 -0.5552125 -0.375902 -0.24896723 -0.68214703 0.23483504 0.43144822
		 0.3110007 0.40357935 0.33070683 0.45743668 0.25454116 0.48530555 0.073050916 -0.010709152
		 0.14921658 -0.038578019 0.1689228 0.01527907 0.092757158 0.043147907;
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "7A2CC6A9-411F-0D96-0D54-ADB9DCA24D13";
	setAttr ".uopa" yes;
	setAttr -s 34 ".uvtk[0:33]" -type "float2" 0.11810561 0.36349615 0.049557693
		 0.36349615 0.049557693 -0.52696711 0.11810561 -0.52696711 0.18665351 0.36349615 0.18665351
		 -0.52696711 0.18069604 0.4374612 0.11214809 0.4374612 0.11214809 -0.45300198 0.18069604
		 -0.45300198 0.043600395 0.4374612 0.043600395 -0.45300198 -0.41385254 0.03322136
		 -0.41385254 0.11302505 -0.48296428 0.073123224 -0.48296428 0.15292658 -0.48296428
		 -0.0066801105 -0.55207598 0.11302505 -0.55207598 0.03322136 -0.70372385 0.095441051
		 -0.70372385 0.015637375 -0.63461208 0.055539235 -0.63461208 -0.024264488 -0.63461208
		 0.13534291 -0.56550032 0.015637375 -0.56550032 0.095441051 0.19047321 -0.52583843
		 0.2702767 -0.52583843 0.2702767 0.37195024 0.19047321 0.37195024 0.26200697 0.43748432
		 0.18220344 0.43748432 0.18220344 -0.46030402 0.26200697 -0.46030402;
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "0AB4046B-48F6-87CD-31E6-67B92368CE88";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" 0.12225361 0.14226229 0.070469767
		 0.14226229 0.070469767 -0.43140143 0.12225361 -0.43140143 0.066545486 0.14226229
		 0.014762044 0.14226229 0.014762044 -0.43140131 0.066545486 -0.43140131 0.77212548
		 0.09235929 0.34977329 -0.90396708 0.43970945 -0.94209176 0.86206186 0.054234546 0.67465305
		 0.051033359 0.25230089 -0.94529307 0.34223714 -0.98341781 0.76458931 0.012908619
		 0.16188666 0.43928438 0.16188666 0.38750073 0.21367007 0.38750073 0.21367007 0.43928438
		 -0.12272704 0.4375535 -0.12272704 0.3857699 -0.070943534 0.3857699 -0.070943534 0.4375535;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "02ADFF8F-4E82-C2C4-F335-0CB28D134137";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "5C0F55EF-4D74-4B6E-1504-D895F61DDEC2";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "0A2EF46A-4F97-2823-AD02-88BD405FB10F";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "1AC89990-4351-216C-BD2F-7E83E231ED47";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "3453C5A5-4F61-4969-284C-A5A64E66CA71";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" -0.11009385 -0.025300451
		 -0.11510395 -0.020290351 -0.11571419 -0.020900693 -0.11070415 -0.025910787 -0.23785782
		 -0.020900603 -0.23284769 -0.025910668 -0.23223746 -0.025300436 -0.23724756 -0.020290261
		 -0.074460492 -0.70681846 -0.074461266 -0.70784479 -0.094167635 -0.73992538 -0.094166741
		 -0.73889899 -0.080418572 -0.70681363 -0.080419526 -0.70783991 -0.10012566 -0.73992056
		 -0.10012482 -0.73889416;
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "8F736BA5-4505-2276-8FBB-C783E6DC5BE9";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" -0.028231662 -0.02530054
		 -0.03324173 -0.02029047 -0.033851992 -0.020900693 -0.028841879 -0.025910787 -0.072834253
		 -0.020900842 -0.067824192 -0.025910817 -0.06721393 -0.025300644 -0.072223991 -0.020290559
		 -0.075624868 -0.81079417 -0.075625762 -0.81182045 -0.095332012 -0.71551436 -0.095331237
		 -0.71448803 -0.081582651 -0.81078929 -0.081583604 -0.81181556 -0.10128985 -0.71550947
		 -0.1012889 -0.7144832;
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "16315DFB-4718-21BD-58B8-299F7CF1E52D";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" 0.32759735 -0.51424479 0.32759735
		 -0.63856375 0.45191634 -0.63856375 0.45191634 -0.51424479 -0.30146983 0.093393505
		 -0.30146983 -0.030925453 -0.17715091 -0.030925453 -0.17715091 0.093393505 -0.46733186
		 0.28722477 -0.46733186 0.16290587 -0.34301293 0.16290575 -0.34301293 0.28722471 0.2317076
		 -0.097490668 0.2317076 -0.22180951 0.35602665 -0.22180951 0.35602665 -0.097490549;
createNode polyTweakUV -n "polyTweakUV19";
	rename -uid "37D23138-4C1C-ECFA-8945-80BED2E17085";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" 0.80560422 -0.71948463 0.80560422
		 -0.84380352 0.92992324 -0.84380352 0.92992324 -0.71948463 0.38834295 0.090521455
		 0.38834295 -0.033797503 0.51266187 -0.033797503 0.51266187 0.090521455 0.5383839
		 0.10554785 0.5383839 -0.018771172 0.6627028 -0.018771172 0.6627028 0.10554773 0.061008632
		 -0.50997698 0.061008632 -0.63429582 0.18532759 -0.63429582 0.18532759 -0.5099768;
createNode polyMapDel -n "polyMapDel1";
	rename -uid "C9103370-433A-714E-F3D0-7A8E739FBC97";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
createNode polyMapDel -n "polyMapDel2";
	rename -uid "13B69610-4DC6-E0AA-34C9-87A4636D142C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
createNode polyAutoProj -n "polyAutoProj16";
	rename -uid "A6AEF78E-4D30-A123-D1B9-C99CB91287C2";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 0.078710412608122615 -0.078710412608122629 0 0 0.64619695278904699 0.64619695278904687 0 0
		 0 0 0.11131333301038926 0 -0.33801682512360898 1.2709874957897194 0.63142542293399273 1;
	setAttr ".s" -type "double3" 1.3649316786307306 1.3649316786307306 1.3649316786307306 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj17";
	rename -uid "1DC367FA-41B4-F8EC-ADE4-BF9ABEB34BA1";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 0.078710412608122615 -0.078710412608122629 0 0 0.64619695278904699 0.64619695278904687 0 0
		 0 0 0.11131333301038926 0 -0.33801682512360898 1.2709874957897194 -0.62219292268634863 1;
	setAttr ".s" -type "double3" 1.3649316786307306 1.3649316786307306 1.3649316786307306 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV20";
	rename -uid "14001BFD-4568-8336-ED51-61A52A8D5E9D";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" -0.41352379 -0.079781935
		 -0.41352379 0.34900439 -0.67186987 0.34900439 -0.67186987 -0.079781935 0.26971346
		 -0.20349154 0.26971346 0.2252948 0.011367559 0.2252948 0.011367559 -0.20349154 0.56748295
		 0.22410113 0.56748295 0.65288782 0.30913714 0.65288782 0.30913714 0.22410166 0.10737322
		 0.25212246 0.10737322 0.68090892 -0.15097259 0.6809088 -0.15097259 0.25212198;
createNode polyTweakUV -n "polyTweakUV21";
	rename -uid "10A5DBBD-4B3D-5965-8179-36BE142C9868";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" -0.41081154 -0.11226852 -0.41081154
		 0.31651795 -0.66915745 0.31651795 -0.66915745 -0.11226852 0.26971346 -0.23151273
		 0.26971346 0.19727358 0.011367559 0.19727358 0.011367559 -0.23151273 0.56748295 0.19608015
		 0.56748295 0.62486672 0.30913714 0.62486684 0.30913714 0.19608057 -0.10777104 0.19806722
		 -0.10777104 0.62685335 -0.36611724 0.62685323 -0.36611724 0.19806653;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 24 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 19 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyTweakUV9.out" "polySurfaceShape1.i";
connectAttr "groupId45.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "polyTweakUV9.uvtk[0]" "polySurfaceShape1.uvst[0].uvtw";
connectAttr "groupId5.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts4.og" "pCubeShape1.i";
connectAttr "groupId6.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "polyTweakUV10.out" "pCylinderShape3.i";
connectAttr "groupId46.id" "pCylinderShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape3.iog.og[0].gco";
connectAttr "polyTweakUV10.uvtk[0]" "pCylinderShape3.uvst[0].uvtw";
connectAttr "polyTweakUV2.out" "pCylinderShape5.i";
connectAttr "groupId42.id" "pCylinderShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape5.iog.og[0].gco";
connectAttr "polyTweakUV2.uvtk[0]" "pCylinderShape5.uvst[0].uvtw";
connectAttr "polyTweakUV20.out" "|pCube2|pCube7|polySurface2|polySurface2|polySurfaceShape2.i"
		;
connectAttr "groupId44.id" "|pCube2|pCube7|polySurface2|polySurface2|polySurfaceShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|pCube2|pCube7|polySurface2|polySurface2|polySurfaceShape2.iog.og[0].gco"
		;
connectAttr "polyTweakUV20.uvtk[0]" "|pCube2|pCube7|polySurface2|polySurface2|polySurfaceShape2.uvst[0].uvtw"
		;
connectAttr "groupId9.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupParts7.og" "pCubeShape2.i";
connectAttr "groupId10.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "polyTweakUV21.out" "polySurfaceShape4.i";
connectAttr "groupId48.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "polyTweakUV21.uvtk[0]" "polySurfaceShape4.uvst[0].uvtw";
connectAttr "groupId17.id" "pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupParts13.og" "pCubeShape3.i";
connectAttr "groupId18.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "polyTweakUV4.out" "pCubeShape4.i";
connectAttr "polyTweakUV4.uvtk[0]" "pCubeShape4.uvst[0].uvtw";
connectAttr "polyTweakUV1.out" "pCylinderShape4.i";
connectAttr "groupId41.id" "pCylinderShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape4.iog.og[0].gco";
connectAttr "polyTweakUV1.uvtk[0]" "pCylinderShape4.uvst[0].uvtw";
connectAttr "groupParts6.og" "pCubeShape6.i";
connectAttr "groupId8.id" "pCubeShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape6.iog.og[0].gco";
connectAttr "groupParts9.og" "pCubeShape8.i";
connectAttr "groupId12.id" "pCubeShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape8.iog.og[0].gco";
connectAttr "polyTweakUV5.out" "pCylinderShape6.i";
connectAttr "groupId43.id" "pCylinderShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape6.iog.og[0].gco";
connectAttr "polyTweakUV5.uvtk[0]" "pCylinderShape6.uvst[0].uvtw";
connectAttr "groupParts15.og" "pCubeShape10.i";
connectAttr "groupId20.id" "pCubeShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape10.iog.og[0].gco";
connectAttr "polyTweakUV7.out" "pCylinderShape7.i";
connectAttr "polyTweakUV7.uvtk[0]" "pCylinderShape7.uvst[0].uvtw";
connectAttr "polyTweakUV17.out" "polySurfaceShape5.i";
connectAttr "groupId49.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "polyTweakUV17.uvtk[0]" "polySurfaceShape5.uvst[0].uvtw";
connectAttr "polyTweakUV16.out" "polySurfaceShape6.i";
connectAttr "groupId47.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "polyTweakUV16.uvtk[0]" "polySurfaceShape6.uvst[0].uvtw";
connectAttr "polyTweakUV15.out" "polySurfaceShape7.i";
connectAttr "groupId50.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "polyTweakUV15.uvtk[0]" "polySurfaceShape7.uvst[0].uvtw";
connectAttr "polyTweakUV3.out" "pCubeShape11.i";
connectAttr "polyTweakUV3.uvtk[0]" "pCubeShape11.uvst[0].uvtw";
connectAttr "polyTweakUV6.out" "pCylinderShape8.i";
connectAttr "polyTweakUV6.uvtk[0]" "pCylinderShape8.uvst[0].uvtw";
connectAttr "polyTweakUV14.out" "pCylinderShape9.i";
connectAttr "polyTweakUV14.uvtk[0]" "pCylinderShape9.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "defaultRedshiftPostEffects.msg" ":redshiftOptions.postEffects";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "polyMirror1.ip";
connectAttr "polyCube1.out" "polyMirror2.ip";
connectAttr "pCubeShape1.wm" "polyMirror2.mp";
connectAttr "polyCube2.out" "polyMirror3.ip";
connectAttr "pCubeShape2.wm" "polyMirror3.mp";
connectAttr "|pCube3|polySurfaceShape2.o" "polyMirror5.ip";
connectAttr "pCubeShape3.wm" "polyMirror5.mp";
connectAttr "pCubeShape1.o" "polySeparate2.ip";
connectAttr "polyMirror1.fnf" "polySeparate2.sf";
connectAttr "polyMirror1.lnf" "polySeparate2.ef";
connectAttr "polyMirror2.out" "groupParts4.ig";
connectAttr "groupId5.id" "groupParts4.gi";
connectAttr "polySeparate2.out[1]" "groupParts6.ig";
connectAttr "groupId8.id" "groupParts6.gi";
connectAttr "pCubeShape2.o" "polySeparate3.ip";
connectAttr "polyMirror1.fnf" "polySeparate3.sf";
connectAttr "polyMirror1.lnf" "polySeparate3.ef";
connectAttr "polyMirror3.out" "groupParts7.ig";
connectAttr "groupId9.id" "groupParts7.gi";
connectAttr "polySeparate3.out[1]" "groupParts9.ig";
connectAttr "groupId12.id" "groupParts9.gi";
connectAttr "pCubeShape3.o" "polySeparate5.ip";
connectAttr "polyMirror1.fnf" "polySeparate5.sf";
connectAttr "polyMirror1.lnf" "polySeparate5.ef";
connectAttr "polyMirror5.out" "groupParts13.ig";
connectAttr "groupId17.id" "groupParts13.gi";
connectAttr "polySeparate5.out[1]" "groupParts15.ig";
connectAttr "groupId20.id" "groupParts15.gi";
connectAttr "groupParts16.og" "polyAutoProj1.ip";
connectAttr "pCylinderShape4.wm" "polyAutoProj1.mp";
connectAttr "polySurfaceShape8.o" "groupParts16.ig";
connectAttr "groupId41.id" "groupParts16.gi";
connectAttr "groupParts17.og" "polyAutoProj2.ip";
connectAttr "pCylinderShape5.wm" "polyAutoProj2.mp";
connectAttr "polySurfaceShape9.o" "groupParts17.ig";
connectAttr "groupId42.id" "groupParts17.gi";
connectAttr "polySurfaceShape10.o" "polyAutoProj3.ip";
connectAttr "pCubeShape11.wm" "polyAutoProj3.mp";
connectAttr "polySurfaceShape11.o" "polyAutoProj4.ip";
connectAttr "pCubeShape4.wm" "polyAutoProj4.mp";
connectAttr "groupParts18.og" "polyAutoProj5.ip";
connectAttr "pCylinderShape6.wm" "polyAutoProj5.mp";
connectAttr "polySurfaceShape12.o" "groupParts18.ig";
connectAttr "groupId43.id" "groupParts18.gi";
connectAttr "polySurfaceShape13.o" "polyAutoProj6.ip";
connectAttr "pCylinderShape8.wm" "polyAutoProj6.mp";
connectAttr "polySurfaceShape14.o" "polyAutoProj7.ip";
connectAttr "pCylinderShape7.wm" "polyAutoProj7.mp";
connectAttr "groupParts19.og" "polyAutoProj8.ip";
connectAttr "|pCube2|pCube7|polySurface2|polySurface2|polySurfaceShape2.wm" "polyAutoProj8.mp"
		;
connectAttr "polySurfaceShape15.o" "groupParts19.ig";
connectAttr "groupId44.id" "groupParts19.gi";
connectAttr "groupParts20.og" "polyAutoProj9.ip";
connectAttr "polySurfaceShape1.wm" "polyAutoProj9.mp";
connectAttr "polySurfaceShape16.o" "groupParts20.ig";
connectAttr "groupId45.id" "groupParts20.gi";
connectAttr "groupParts21.og" "polyAutoProj10.ip";
connectAttr "pCylinderShape3.wm" "polyAutoProj10.mp";
connectAttr "polySurfaceShape17.o" "groupParts21.ig";
connectAttr "groupId46.id" "groupParts21.gi";
connectAttr "groupParts22.og" "polyAutoProj11.ip";
connectAttr "polySurfaceShape6.wm" "polyAutoProj11.mp";
connectAttr "polySurfaceShape18.o" "groupParts22.ig";
connectAttr "groupId47.id" "groupParts22.gi";
connectAttr "groupParts23.og" "polyAutoProj12.ip";
connectAttr "polySurfaceShape4.wm" "polyAutoProj12.mp";
connectAttr "polySurfaceShape19.o" "groupParts23.ig";
connectAttr "groupId48.id" "groupParts23.gi";
connectAttr "groupParts24.og" "polyAutoProj13.ip";
connectAttr "polySurfaceShape5.wm" "polyAutoProj13.mp";
connectAttr "polySurfaceShape20.o" "groupParts24.ig";
connectAttr "groupId49.id" "groupParts24.gi";
connectAttr "polySurfaceShape21.o" "polyAutoProj14.ip";
connectAttr "pCylinderShape9.wm" "polyAutoProj14.mp";
connectAttr "groupParts25.og" "polyAutoProj15.ip";
connectAttr "polySurfaceShape7.wm" "polyAutoProj15.mp";
connectAttr "polySurfaceShape22.o" "groupParts25.ig";
connectAttr "groupId50.id" "groupParts25.gi";
connectAttr "polyAutoProj1.out" "polyTweakUV1.ip";
connectAttr "polyAutoProj2.out" "polyTweakUV2.ip";
connectAttr "polyAutoProj3.out" "polyTweakUV3.ip";
connectAttr "polyAutoProj4.out" "polyTweakUV4.ip";
connectAttr "polyAutoProj5.out" "polyTweakUV5.ip";
connectAttr "polyAutoProj6.out" "polyTweakUV6.ip";
connectAttr "polyAutoProj7.out" "polyTweakUV7.ip";
connectAttr "polyAutoProj8.out" "polyTweakUV8.ip";
connectAttr "polyAutoProj9.out" "polyTweakUV9.ip";
connectAttr "polyAutoProj10.out" "polyTweakUV10.ip";
connectAttr "polyAutoProj11.out" "polyTweakUV11.ip";
connectAttr "polyAutoProj12.out" "polyTweakUV12.ip";
connectAttr "polyAutoProj13.out" "polyTweakUV13.ip";
connectAttr "polyAutoProj14.out" "polyTweakUV14.ip";
connectAttr "polyAutoProj15.out" "polyTweakUV15.ip";
connectAttr "polyTweakUV12.out" "deleteComponent1.ig";
connectAttr "polyTweakUV8.out" "deleteComponent2.ig";
connectAttr "polyTweakUV11.out" "deleteComponent3.ig";
connectAttr "polyTweakUV13.out" "deleteComponent4.ig";
connectAttr "deleteComponent3.og" "polyTweakUV16.ip";
connectAttr "deleteComponent4.og" "polyTweakUV17.ip";
connectAttr "deleteComponent2.og" "polyTweakUV18.ip";
connectAttr "deleteComponent1.og" "polyTweakUV19.ip";
connectAttr "polyTweakUV18.out" "polyMapDel1.ip";
connectAttr "polyTweakUV19.out" "polyMapDel2.ip";
connectAttr "polyMapDel1.out" "polyAutoProj16.ip";
connectAttr "|pCube2|pCube7|polySurface2|polySurface2|polySurfaceShape2.wm" "polyAutoProj16.mp"
		;
connectAttr "polyMapDel2.out" "polyAutoProj17.ip";
connectAttr "polySurfaceShape4.wm" "polyAutoProj17.mp";
connectAttr "polyAutoProj16.out" "polyTweakUV20.ip";
connectAttr "polyAutoProj17.out" "polyTweakUV21.ip";
connectAttr "defaultRedshiftPostEffects.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|pCube2|pCube7|polySurface2|polySurface2|polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId41.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId42.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId43.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId44.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId45.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId46.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId47.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId48.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId49.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId50.msg" ":initialShadingGroup.gn" -na;
// End of BatteringRam.ma

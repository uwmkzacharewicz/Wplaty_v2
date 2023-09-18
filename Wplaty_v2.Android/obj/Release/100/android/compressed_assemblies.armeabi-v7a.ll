; ModuleID = 'obj\Release\100\android\compressed_assemblies.armeabi-v7a.ll'
source_filename = "obj\Release\100\android\compressed_assemblies.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.CompressedAssemblyDescriptor = type {
	i32,; uint32_t uncompressed_file_size
	i8,; bool loaded
	i8*; uint8_t* data
}

%struct.CompressedAssemblies = type {
	i32,; uint32_t count
	%struct.CompressedAssemblyDescriptor*; CompressedAssemblyDescriptor* descriptors
}
@__CompressedAssemblyDescriptor_data_0 = internal global [208384 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_1 = internal global [5689344 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_2 = internal global [15872 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_3 = internal global [166912 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_4 = internal global [300032 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_5 = internal global [2400256 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_6 = internal global [122880 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_7 = internal global [218112 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_8 = internal global [100352 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_9 = internal global [5120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_10 = internal global [46080 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_11 = internal global [5120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_12 = internal global [35328 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_13 = internal global [482304 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_14 = internal global [73216 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_15 = internal global [415232 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_16 = internal global [283136 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_17 = internal global [125952 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_18 = internal global [50176 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_19 = internal global [4677632 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_20 = internal global [352256 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_21 = internal global [59392 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_22 = internal global [370688 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_23 = internal global [67072 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_24 = internal global [112640 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_25 = internal global [738816 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_26 = internal global [78848 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_27 = internal global [86016 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_28 = internal global [29184 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_29 = internal global [36864 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_30 = internal global [19456 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_31 = internal global [21504 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_32 = internal global [61952 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_33 = internal global [75776 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_34 = internal global [2919424 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_35 = internal global [14728 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_36 = internal global [1073664 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_37 = internal global [745984 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_38 = internal global [32256 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_39 = internal global [78848 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_40 = internal global [108544 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_41 = internal global [219648 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_42 = internal global [35840 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_43 = internal global [7168 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_44 = internal global [420352 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_45 = internal global [55808 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_46 = internal global [5120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_47 = internal global [78336 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_48 = internal global [1473024 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_49 = internal global [946688 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_50 = internal global [730624 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_51 = internal global [328704 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_52 = internal global [53248 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_53 = internal global [16896 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_54 = internal global [509952 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_55 = internal global [17920 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_56 = internal global [79360 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_57 = internal global [587776 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_58 = internal global [25088 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_59 = internal global [9216 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_60 = internal global [44032 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_61 = internal global [175104 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_62 = internal global [9728 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_63 = internal global [15872 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_64 = internal global [15360 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_65 = internal global [16384 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_66 = internal global [17408 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_67 = internal global [36864 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_68 = internal global [443392 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_69 = internal global [13312 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_70 = internal global [40448 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_71 = internal global [57856 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_72 = internal global [481792 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_73 = internal global [33792 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_74 = internal global [1218560 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_75 = internal global [961536 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_76 = internal global [264088 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_77 = internal global [103424 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_78 = internal global [258048 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_79 = internal global [18072 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_80 = internal global [2250240 x i8] zeroinitializer, align 1


; Compressed assembly data storage
@compressed_assembly_descriptors = internal global [81 x %struct.CompressedAssemblyDescriptor] [
	; 0
	%struct.CompressedAssemblyDescriptor {
		i32 208384, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([208384 x i8], [208384 x i8]* @__CompressedAssemblyDescriptor_data_0, i32 0, i32 0); data
	}, 
	; 1
	%struct.CompressedAssemblyDescriptor {
		i32 5689344, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([5689344 x i8], [5689344 x i8]* @__CompressedAssemblyDescriptor_data_1, i32 0, i32 0); data
	}, 
	; 2
	%struct.CompressedAssemblyDescriptor {
		i32 15872, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15872 x i8], [15872 x i8]* @__CompressedAssemblyDescriptor_data_2, i32 0, i32 0); data
	}, 
	; 3
	%struct.CompressedAssemblyDescriptor {
		i32 166912, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([166912 x i8], [166912 x i8]* @__CompressedAssemblyDescriptor_data_3, i32 0, i32 0); data
	}, 
	; 4
	%struct.CompressedAssemblyDescriptor {
		i32 300032, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([300032 x i8], [300032 x i8]* @__CompressedAssemblyDescriptor_data_4, i32 0, i32 0); data
	}, 
	; 5
	%struct.CompressedAssemblyDescriptor {
		i32 2400256, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([2400256 x i8], [2400256 x i8]* @__CompressedAssemblyDescriptor_data_5, i32 0, i32 0); data
	}, 
	; 6
	%struct.CompressedAssemblyDescriptor {
		i32 122880, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([122880 x i8], [122880 x i8]* @__CompressedAssemblyDescriptor_data_6, i32 0, i32 0); data
	}, 
	; 7
	%struct.CompressedAssemblyDescriptor {
		i32 218112, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([218112 x i8], [218112 x i8]* @__CompressedAssemblyDescriptor_data_7, i32 0, i32 0); data
	}, 
	; 8
	%struct.CompressedAssemblyDescriptor {
		i32 100352, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([100352 x i8], [100352 x i8]* @__CompressedAssemblyDescriptor_data_8, i32 0, i32 0); data
	}, 
	; 9
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([5120 x i8], [5120 x i8]* @__CompressedAssemblyDescriptor_data_9, i32 0, i32 0); data
	}, 
	; 10
	%struct.CompressedAssemblyDescriptor {
		i32 46080, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([46080 x i8], [46080 x i8]* @__CompressedAssemblyDescriptor_data_10, i32 0, i32 0); data
	}, 
	; 11
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([5120 x i8], [5120 x i8]* @__CompressedAssemblyDescriptor_data_11, i32 0, i32 0); data
	}, 
	; 12
	%struct.CompressedAssemblyDescriptor {
		i32 35328, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([35328 x i8], [35328 x i8]* @__CompressedAssemblyDescriptor_data_12, i32 0, i32 0); data
	}, 
	; 13
	%struct.CompressedAssemblyDescriptor {
		i32 482304, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([482304 x i8], [482304 x i8]* @__CompressedAssemblyDescriptor_data_13, i32 0, i32 0); data
	}, 
	; 14
	%struct.CompressedAssemblyDescriptor {
		i32 73216, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([73216 x i8], [73216 x i8]* @__CompressedAssemblyDescriptor_data_14, i32 0, i32 0); data
	}, 
	; 15
	%struct.CompressedAssemblyDescriptor {
		i32 415232, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([415232 x i8], [415232 x i8]* @__CompressedAssemblyDescriptor_data_15, i32 0, i32 0); data
	}, 
	; 16
	%struct.CompressedAssemblyDescriptor {
		i32 283136, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([283136 x i8], [283136 x i8]* @__CompressedAssemblyDescriptor_data_16, i32 0, i32 0); data
	}, 
	; 17
	%struct.CompressedAssemblyDescriptor {
		i32 125952, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([125952 x i8], [125952 x i8]* @__CompressedAssemblyDescriptor_data_17, i32 0, i32 0); data
	}, 
	; 18
	%struct.CompressedAssemblyDescriptor {
		i32 50176, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([50176 x i8], [50176 x i8]* @__CompressedAssemblyDescriptor_data_18, i32 0, i32 0); data
	}, 
	; 19
	%struct.CompressedAssemblyDescriptor {
		i32 4677632, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4677632 x i8], [4677632 x i8]* @__CompressedAssemblyDescriptor_data_19, i32 0, i32 0); data
	}, 
	; 20
	%struct.CompressedAssemblyDescriptor {
		i32 352256, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([352256 x i8], [352256 x i8]* @__CompressedAssemblyDescriptor_data_20, i32 0, i32 0); data
	}, 
	; 21
	%struct.CompressedAssemblyDescriptor {
		i32 59392, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([59392 x i8], [59392 x i8]* @__CompressedAssemblyDescriptor_data_21, i32 0, i32 0); data
	}, 
	; 22
	%struct.CompressedAssemblyDescriptor {
		i32 370688, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([370688 x i8], [370688 x i8]* @__CompressedAssemblyDescriptor_data_22, i32 0, i32 0); data
	}, 
	; 23
	%struct.CompressedAssemblyDescriptor {
		i32 67072, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([67072 x i8], [67072 x i8]* @__CompressedAssemblyDescriptor_data_23, i32 0, i32 0); data
	}, 
	; 24
	%struct.CompressedAssemblyDescriptor {
		i32 112640, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([112640 x i8], [112640 x i8]* @__CompressedAssemblyDescriptor_data_24, i32 0, i32 0); data
	}, 
	; 25
	%struct.CompressedAssemblyDescriptor {
		i32 738816, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([738816 x i8], [738816 x i8]* @__CompressedAssemblyDescriptor_data_25, i32 0, i32 0); data
	}, 
	; 26
	%struct.CompressedAssemblyDescriptor {
		i32 78848, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([78848 x i8], [78848 x i8]* @__CompressedAssemblyDescriptor_data_26, i32 0, i32 0); data
	}, 
	; 27
	%struct.CompressedAssemblyDescriptor {
		i32 86016, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([86016 x i8], [86016 x i8]* @__CompressedAssemblyDescriptor_data_27, i32 0, i32 0); data
	}, 
	; 28
	%struct.CompressedAssemblyDescriptor {
		i32 29184, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([29184 x i8], [29184 x i8]* @__CompressedAssemblyDescriptor_data_28, i32 0, i32 0); data
	}, 
	; 29
	%struct.CompressedAssemblyDescriptor {
		i32 36864, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([36864 x i8], [36864 x i8]* @__CompressedAssemblyDescriptor_data_29, i32 0, i32 0); data
	}, 
	; 30
	%struct.CompressedAssemblyDescriptor {
		i32 19456, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([19456 x i8], [19456 x i8]* @__CompressedAssemblyDescriptor_data_30, i32 0, i32 0); data
	}, 
	; 31
	%struct.CompressedAssemblyDescriptor {
		i32 21504, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([21504 x i8], [21504 x i8]* @__CompressedAssemblyDescriptor_data_31, i32 0, i32 0); data
	}, 
	; 32
	%struct.CompressedAssemblyDescriptor {
		i32 61952, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([61952 x i8], [61952 x i8]* @__CompressedAssemblyDescriptor_data_32, i32 0, i32 0); data
	}, 
	; 33
	%struct.CompressedAssemblyDescriptor {
		i32 75776, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([75776 x i8], [75776 x i8]* @__CompressedAssemblyDescriptor_data_33, i32 0, i32 0); data
	}, 
	; 34
	%struct.CompressedAssemblyDescriptor {
		i32 2919424, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([2919424 x i8], [2919424 x i8]* @__CompressedAssemblyDescriptor_data_34, i32 0, i32 0); data
	}, 
	; 35
	%struct.CompressedAssemblyDescriptor {
		i32 14728, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([14728 x i8], [14728 x i8]* @__CompressedAssemblyDescriptor_data_35, i32 0, i32 0); data
	}, 
	; 36
	%struct.CompressedAssemblyDescriptor {
		i32 1073664, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1073664 x i8], [1073664 x i8]* @__CompressedAssemblyDescriptor_data_36, i32 0, i32 0); data
	}, 
	; 37
	%struct.CompressedAssemblyDescriptor {
		i32 745984, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([745984 x i8], [745984 x i8]* @__CompressedAssemblyDescriptor_data_37, i32 0, i32 0); data
	}, 
	; 38
	%struct.CompressedAssemblyDescriptor {
		i32 32256, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([32256 x i8], [32256 x i8]* @__CompressedAssemblyDescriptor_data_38, i32 0, i32 0); data
	}, 
	; 39
	%struct.CompressedAssemblyDescriptor {
		i32 78848, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([78848 x i8], [78848 x i8]* @__CompressedAssemblyDescriptor_data_39, i32 0, i32 0); data
	}, 
	; 40
	%struct.CompressedAssemblyDescriptor {
		i32 108544, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([108544 x i8], [108544 x i8]* @__CompressedAssemblyDescriptor_data_40, i32 0, i32 0); data
	}, 
	; 41
	%struct.CompressedAssemblyDescriptor {
		i32 219648, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([219648 x i8], [219648 x i8]* @__CompressedAssemblyDescriptor_data_41, i32 0, i32 0); data
	}, 
	; 42
	%struct.CompressedAssemblyDescriptor {
		i32 35840, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([35840 x i8], [35840 x i8]* @__CompressedAssemblyDescriptor_data_42, i32 0, i32 0); data
	}, 
	; 43
	%struct.CompressedAssemblyDescriptor {
		i32 7168, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([7168 x i8], [7168 x i8]* @__CompressedAssemblyDescriptor_data_43, i32 0, i32 0); data
	}, 
	; 44
	%struct.CompressedAssemblyDescriptor {
		i32 420352, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([420352 x i8], [420352 x i8]* @__CompressedAssemblyDescriptor_data_44, i32 0, i32 0); data
	}, 
	; 45
	%struct.CompressedAssemblyDescriptor {
		i32 55808, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([55808 x i8], [55808 x i8]* @__CompressedAssemblyDescriptor_data_45, i32 0, i32 0); data
	}, 
	; 46
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([5120 x i8], [5120 x i8]* @__CompressedAssemblyDescriptor_data_46, i32 0, i32 0); data
	}, 
	; 47
	%struct.CompressedAssemblyDescriptor {
		i32 78336, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([78336 x i8], [78336 x i8]* @__CompressedAssemblyDescriptor_data_47, i32 0, i32 0); data
	}, 
	; 48
	%struct.CompressedAssemblyDescriptor {
		i32 1473024, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1473024 x i8], [1473024 x i8]* @__CompressedAssemblyDescriptor_data_48, i32 0, i32 0); data
	}, 
	; 49
	%struct.CompressedAssemblyDescriptor {
		i32 946688, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([946688 x i8], [946688 x i8]* @__CompressedAssemblyDescriptor_data_49, i32 0, i32 0); data
	}, 
	; 50
	%struct.CompressedAssemblyDescriptor {
		i32 730624, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([730624 x i8], [730624 x i8]* @__CompressedAssemblyDescriptor_data_50, i32 0, i32 0); data
	}, 
	; 51
	%struct.CompressedAssemblyDescriptor {
		i32 328704, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([328704 x i8], [328704 x i8]* @__CompressedAssemblyDescriptor_data_51, i32 0, i32 0); data
	}, 
	; 52
	%struct.CompressedAssemblyDescriptor {
		i32 53248, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([53248 x i8], [53248 x i8]* @__CompressedAssemblyDescriptor_data_52, i32 0, i32 0); data
	}, 
	; 53
	%struct.CompressedAssemblyDescriptor {
		i32 16896, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([16896 x i8], [16896 x i8]* @__CompressedAssemblyDescriptor_data_53, i32 0, i32 0); data
	}, 
	; 54
	%struct.CompressedAssemblyDescriptor {
		i32 509952, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([509952 x i8], [509952 x i8]* @__CompressedAssemblyDescriptor_data_54, i32 0, i32 0); data
	}, 
	; 55
	%struct.CompressedAssemblyDescriptor {
		i32 17920, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([17920 x i8], [17920 x i8]* @__CompressedAssemblyDescriptor_data_55, i32 0, i32 0); data
	}, 
	; 56
	%struct.CompressedAssemblyDescriptor {
		i32 79360, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([79360 x i8], [79360 x i8]* @__CompressedAssemblyDescriptor_data_56, i32 0, i32 0); data
	}, 
	; 57
	%struct.CompressedAssemblyDescriptor {
		i32 587776, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([587776 x i8], [587776 x i8]* @__CompressedAssemblyDescriptor_data_57, i32 0, i32 0); data
	}, 
	; 58
	%struct.CompressedAssemblyDescriptor {
		i32 25088, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([25088 x i8], [25088 x i8]* @__CompressedAssemblyDescriptor_data_58, i32 0, i32 0); data
	}, 
	; 59
	%struct.CompressedAssemblyDescriptor {
		i32 9216, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([9216 x i8], [9216 x i8]* @__CompressedAssemblyDescriptor_data_59, i32 0, i32 0); data
	}, 
	; 60
	%struct.CompressedAssemblyDescriptor {
		i32 44032, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([44032 x i8], [44032 x i8]* @__CompressedAssemblyDescriptor_data_60, i32 0, i32 0); data
	}, 
	; 61
	%struct.CompressedAssemblyDescriptor {
		i32 175104, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([175104 x i8], [175104 x i8]* @__CompressedAssemblyDescriptor_data_61, i32 0, i32 0); data
	}, 
	; 62
	%struct.CompressedAssemblyDescriptor {
		i32 9728, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([9728 x i8], [9728 x i8]* @__CompressedAssemblyDescriptor_data_62, i32 0, i32 0); data
	}, 
	; 63
	%struct.CompressedAssemblyDescriptor {
		i32 15872, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15872 x i8], [15872 x i8]* @__CompressedAssemblyDescriptor_data_63, i32 0, i32 0); data
	}, 
	; 64
	%struct.CompressedAssemblyDescriptor {
		i32 15360, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([15360 x i8], [15360 x i8]* @__CompressedAssemblyDescriptor_data_64, i32 0, i32 0); data
	}, 
	; 65
	%struct.CompressedAssemblyDescriptor {
		i32 16384, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([16384 x i8], [16384 x i8]* @__CompressedAssemblyDescriptor_data_65, i32 0, i32 0); data
	}, 
	; 66
	%struct.CompressedAssemblyDescriptor {
		i32 17408, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([17408 x i8], [17408 x i8]* @__CompressedAssemblyDescriptor_data_66, i32 0, i32 0); data
	}, 
	; 67
	%struct.CompressedAssemblyDescriptor {
		i32 36864, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([36864 x i8], [36864 x i8]* @__CompressedAssemblyDescriptor_data_67, i32 0, i32 0); data
	}, 
	; 68
	%struct.CompressedAssemblyDescriptor {
		i32 443392, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([443392 x i8], [443392 x i8]* @__CompressedAssemblyDescriptor_data_68, i32 0, i32 0); data
	}, 
	; 69
	%struct.CompressedAssemblyDescriptor {
		i32 13312, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([13312 x i8], [13312 x i8]* @__CompressedAssemblyDescriptor_data_69, i32 0, i32 0); data
	}, 
	; 70
	%struct.CompressedAssemblyDescriptor {
		i32 40448, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([40448 x i8], [40448 x i8]* @__CompressedAssemblyDescriptor_data_70, i32 0, i32 0); data
	}, 
	; 71
	%struct.CompressedAssemblyDescriptor {
		i32 57856, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([57856 x i8], [57856 x i8]* @__CompressedAssemblyDescriptor_data_71, i32 0, i32 0); data
	}, 
	; 72
	%struct.CompressedAssemblyDescriptor {
		i32 481792, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([481792 x i8], [481792 x i8]* @__CompressedAssemblyDescriptor_data_72, i32 0, i32 0); data
	}, 
	; 73
	%struct.CompressedAssemblyDescriptor {
		i32 33792, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([33792 x i8], [33792 x i8]* @__CompressedAssemblyDescriptor_data_73, i32 0, i32 0); data
	}, 
	; 74
	%struct.CompressedAssemblyDescriptor {
		i32 1218560, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1218560 x i8], [1218560 x i8]* @__CompressedAssemblyDescriptor_data_74, i32 0, i32 0); data
	}, 
	; 75
	%struct.CompressedAssemblyDescriptor {
		i32 961536, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([961536 x i8], [961536 x i8]* @__CompressedAssemblyDescriptor_data_75, i32 0, i32 0); data
	}, 
	; 76
	%struct.CompressedAssemblyDescriptor {
		i32 264088, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([264088 x i8], [264088 x i8]* @__CompressedAssemblyDescriptor_data_76, i32 0, i32 0); data
	}, 
	; 77
	%struct.CompressedAssemblyDescriptor {
		i32 103424, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([103424 x i8], [103424 x i8]* @__CompressedAssemblyDescriptor_data_77, i32 0, i32 0); data
	}, 
	; 78
	%struct.CompressedAssemblyDescriptor {
		i32 258048, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([258048 x i8], [258048 x i8]* @__CompressedAssemblyDescriptor_data_78, i32 0, i32 0); data
	}, 
	; 79
	%struct.CompressedAssemblyDescriptor {
		i32 18072, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([18072 x i8], [18072 x i8]* @__CompressedAssemblyDescriptor_data_79, i32 0, i32 0); data
	}, 
	; 80
	%struct.CompressedAssemblyDescriptor {
		i32 2250240, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([2250240 x i8], [2250240 x i8]* @__CompressedAssemblyDescriptor_data_80, i32 0, i32 0); data
	}
], align 4; end of 'compressed_assembly_descriptors' array


; compressed_assemblies
@compressed_assemblies = local_unnamed_addr global %struct.CompressedAssemblies {
	i32 81, ; count
	%struct.CompressedAssemblyDescriptor* getelementptr inbounds ([81 x %struct.CompressedAssemblyDescriptor], [81 x %struct.CompressedAssemblyDescriptor]* @compressed_assembly_descriptors, i32 0, i32 0); descriptors
}, align 4


!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}

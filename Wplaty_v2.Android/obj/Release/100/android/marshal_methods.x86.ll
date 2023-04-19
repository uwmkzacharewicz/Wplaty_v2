; ModuleID = 'obj\Release\100\android\marshal_methods.x86.ll'
source_filename = "obj\Release\100\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [160 x i32] [
	i32 19040051, ; 0: Syncfusion.SfGridConverter.XForms.dll => 0x1228733 => 30
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 75
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 70
	i32 66706743, ; 3: Syncfusion.SfMaskedEdit.XForms.Android.dll => 0x3f9dd37 => 31
	i32 90921095, ; 4: Syncfusion.SfNumericTextBox.XForms.Android => 0x56b5887 => 34
	i32 138867803, ; 5: Wplaty_v2.dll => 0x846f45b => 47
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 66
	i32 230752869, ; 7: Microsoft.CSharp.dll => 0xdc10265 => 9
	i32 280482487, ; 8: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 58
	i32 318968648, ; 9: Xamarin.AndroidX.Activity.dll => 0x13031348 => 48
	i32 321597661, ; 10: System.Numerics => 0x132b30dd => 43
	i32 342366114, ; 11: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 60
	i32 347068432, ; 12: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 15
	i32 377964854, ; 13: Syncfusion.SfAutoComplete.XForms => 0x16874936 => 25
	i32 442521989, ; 14: Xamarin.Essentials => 0x1a605985 => 69
	i32 450948140, ; 15: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 57
	i32 465846621, ; 16: mscorlib => 0x1bc4415d => 11
	i32 469710990, ; 17: System.dll => 0x1bff388e => 41
	i32 476646585, ; 18: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 58
	i32 627609679, ; 19: Xamarin.AndroidX.CustomView => 0x2568904f => 55
	i32 690569205, ; 20: System.Xml.Linq.dll => 0x29293ff5 => 46
	i32 708149616, ; 21: Syncfusion.Data.Portable.dll => 0x2a358170 => 20
	i32 719061231, ; 22: Syncfusion.Core.XForms.dll => 0x2adc00ef => 19
	i32 729844822, ; 23: Syncfusion.SfComboBox.XForms.Android => 0x2b808c56 => 26
	i32 748832960, ; 24: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 13
	i32 775507847, ; 25: System.IO.Compression => 0x2e394f87 => 77
	i32 809851609, ; 26: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 864956750, ; 27: Syncfusion.SfMaskedEdit.XForms => 0x338e314e => 32
	i32 898440345, ; 28: CsvHelper => 0x358d1c99 => 5
	i32 928116545, ; 29: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 75
	i32 967690846, ; 30: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 60
	i32 974778368, ; 31: FormsViewGroup.dll => 0x3a19f000 => 7
	i32 1012816738, ; 32: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 65
	i32 1035644815, ; 33: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 50
	i32 1042160112, ; 34: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 72
	i32 1052210849, ; 35: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 62
	i32 1083751839, ; 36: System.IO.Packaging => 0x4098bd9f => 42
	i32 1098259244, ; 37: System => 0x41761b2c => 41
	i32 1264538220, ; 38: Syncfusion.Compression.Portable => 0x4b5f526c => 17
	i32 1292207520, ; 39: SQLitePCLRaw.core.dll => 0x4d0585a0 => 14
	i32 1293217323, ; 40: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 56
	i32 1338781641, ; 41: DocumentFormat.OpenXml.dll => 0x4fcc2fc9 => 6
	i32 1365406463, ; 42: System.ServiceModel.Internals.dll => 0x516272ff => 78
	i32 1376866003, ; 43: Xamarin.AndroidX.SavedState => 0x52114ed3 => 65
	i32 1406073936, ; 44: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 52
	i32 1411638395, ; 45: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 44
	i32 1460219004, ; 46: Xamarin.Forms.Xaml => 0x57092c7c => 73
	i32 1462112819, ; 47: System.IO.Compression.dll => 0x57261233 => 77
	i32 1469204771, ; 48: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 49
	i32 1489278563, ; 49: Syncfusion.SfAutoComplete.XForms.dll => 0x58c49663 => 25
	i32 1516315406, ; 50: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 18
	i32 1519760047, ; 51: Syncfusion.SfProgressBar.XForms.Android.dll => 0x5a95b2af => 36
	i32 1592978981, ; 52: System.Runtime.Serialization.dll => 0x5ef2ee25 => 4
	i32 1622152042, ; 53: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 63
	i32 1636350590, ; 54: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 54
	i32 1637556708, ; 55: Syncfusion.SfProgressBar.XForms.dll => 0x619b21e4 => 37
	i32 1639515021, ; 56: System.Net.Http.dll => 0x61b9038d => 3
	i32 1658251792, ; 57: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 74
	i32 1698018812, ; 58: Syncfusion.XlsIO.Portable.dll => 0x6535b5fc => 38
	i32 1711441057, ; 59: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 15
	i32 1712766919, ; 60: Syncfusion.SfComboBox.XForms.dll => 0x6616bfc7 => 27
	i32 1729485958, ; 61: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 51
	i32 1766324549, ; 62: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 66
	i32 1776026572, ; 63: System.Core.dll => 0x69dc03cc => 40
	i32 1788241197, ; 64: Xamarin.AndroidX.Fragment => 0x6a96652d => 57
	i32 1808609942, ; 65: Xamarin.AndroidX.Loader => 0x6bcd3296 => 63
	i32 1813201214, ; 66: Xamarin.Google.Android.Material => 0x6c13413e => 74
	i32 1867746548, ; 67: Xamarin.Essentials.dll => 0x6f538cf4 => 69
	i32 1878053835, ; 68: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 73
	i32 2011961780, ; 69: System.Buffers.dll => 0x77ec19b4 => 39
	i32 2019465201, ; 70: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 62
	i32 2055257422, ; 71: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 61
	i32 2097448633, ; 72: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 59
	i32 2103459038, ; 73: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 16
	i32 2126786730, ; 74: Xamarin.Forms.Platform.Android => 0x7ec430aa => 71
	i32 2192674484, ; 75: Syncfusion.SfMaskedEdit.XForms.dll => 0x82b18eb4 => 32
	i32 2195767025, ; 76: Syncfusion.SfDataGrid.XForms.Android.dll => 0x82e0bef1 => 28
	i32 2201231467, ; 77: System.Net.Http => 0x8334206b => 3
	i32 2274093155, ; 78: Wplaty_v2.Android.dll => 0x878be863 => 0
	i32 2279755925, ; 79: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 64
	i32 2324593299, ; 80: Syncfusion.SfDataGrid.XForms => 0x8a8e7a93 => 29
	i32 2343171156, ; 81: Syncfusion.Core.XForms => 0x8ba9f454 => 19
	i32 2354730003, ; 82: Syncfusion.Licensing => 0x8c5a5413 => 22
	i32 2465273461, ; 83: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 13
	i32 2475788418, ; 84: Java.Interop.dll => 0x93918882 => 8
	i32 2562349572, ; 85: Microsoft.CSharp => 0x98ba5a04 => 9
	i32 2620871830, ; 86: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 54
	i32 2635217119, ; 87: Syncfusion.SfAutoComplete.XForms.Android => 0x9d1238df => 24
	i32 2647358571, ; 88: Syncfusion.SfAutoComplete.XForms.Android.dll => 0x9dcb7c6b => 24
	i32 2732626843, ; 89: Xamarin.AndroidX.Activity => 0xa2e0939b => 48
	i32 2737747696, ; 90: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 49
	i32 2765824710, ; 91: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 2
	i32 2766581644, ; 92: Xamarin.Forms.Core => 0xa4e6af8c => 70
	i32 2778768386, ; 93: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 67
	i32 2810250172, ; 94: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 52
	i32 2819470561, ; 95: System.Xml.dll => 0xa80db4e1 => 45
	i32 2853208004, ; 96: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 67
	i32 2854891590, ; 97: Syncfusion.SfProgressBar.XForms => 0xaa2a3046 => 37
	i32 2868557005, ; 98: Syncfusion.Licensing.dll => 0xaafab4cd => 22
	i32 2874148507, ; 99: Syncfusion.Core.XForms.Android => 0xab50069b => 18
	i32 2905242038, ; 100: mscorlib.dll => 0xad2a79b6 => 11
	i32 2969700472, ; 101: Syncfusion.Data.Portable => 0xb1020878 => 20
	i32 2978675010, ; 102: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 56
	i32 3017678341, ; 103: Syncfusion.SfMaskedEdit.XForms.Android => 0xb3de1e05 => 31
	i32 3044182254, ; 104: FormsViewGroup => 0xb57288ee => 7
	i32 3048527850, ; 105: Syncfusion.SfNumericTextBox.Android.dll => 0xb5b4d7ea => 33
	i32 3079895995, ; 106: Wplaty_v2.Android => 0xb7937bbb => 0
	i32 3111772706, ; 107: System.Runtime.Serialization => 0xb979e222 => 4
	i32 3204380047, ; 108: System.Data.dll => 0xbefef58f => 76
	i32 3238542748, ; 109: Syncfusion.SfDataGrid.XForms.Android => 0xc1083d9c => 28
	i32 3247949154, ; 110: Mono.Security => 0xc197c562 => 79
	i32 3258312781, ; 111: Xamarin.AndroidX.CardView => 0xc235e84d => 51
	i32 3286872994, ; 112: SQLite-net.dll => 0xc3e9b3a2 => 12
	i32 3317135071, ; 113: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 55
	i32 3317144872, ; 114: System.Data => 0xc5b79d28 => 76
	i32 3329003366, ; 115: Syncfusion.SfNumericTextBox.XForms.Android.dll => 0xc66c8f66 => 34
	i32 3353484488, ; 116: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 59
	i32 3353544232, ; 117: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 68
	i32 3360279109, ; 118: SQLitePCLRaw.core => 0xc849ca45 => 14
	i32 3362522851, ; 119: Xamarin.AndroidX.Core => 0xc86c06e3 => 53
	i32 3366347497, ; 120: Java.Interop => 0xc8a662e9 => 8
	i32 3374999561, ; 121: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 64
	i32 3395150330, ; 122: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 44
	i32 3404865022, ; 123: System.ServiceModel.Internals => 0xcaf21dfe => 78
	i32 3407215217, ; 124: Xamarin.CommunityToolkit => 0xcb15fa71 => 68
	i32 3429136800, ; 125: System.Xml => 0xcc6479a0 => 45
	i32 3433996769, ; 126: Syncfusion.Pdf.Portable.dll => 0xccaea1e1 => 23
	i32 3448958507, ; 127: Syncfusion.GridCommon.Portable.dll => 0xcd92ee2b => 21
	i32 3476120550, ; 128: Mono.Android => 0xcf3163e6 => 10
	i32 3509114376, ; 129: System.Xml.Linq => 0xd128d608 => 46
	i32 3513050365, ; 130: Syncfusion.SfGridConverter.XForms => 0xd164e4fd => 30
	i32 3536029504, ; 131: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 71
	i32 3544322670, ; 132: Syncfusion.SfProgressBar.XForms.Android => 0xd342126e => 36
	i32 3551972787, ; 133: Syncfusion.Compression.Portable.dll => 0xd3b6cdb3 => 17
	i32 3612305132, ; 134: Syncfusion.SfDataGrid.XForms.dll => 0xd74f66ec => 29
	i32 3632266177, ; 135: Syncfusion.SfComboBox.XForms => 0xd87ffbc1 => 27
	i32 3632359727, ; 136: Xamarin.Forms.Platform => 0xd881692f => 72
	i32 3641597786, ; 137: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 61
	i32 3672681054, ; 138: Mono.Android.dll => 0xdae8aa5e => 10
	i32 3678792001, ; 139: Wplaty_v2 => 0xdb45e941 => 47
	i32 3689375977, ; 140: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3693477420, ; 141: Syncfusion.SfNumericTextBox.XForms => 0xdc25fe2c => 35
	i32 3754567612, ; 142: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 16
	i32 3818918118, ; 143: CsvHelper.dll => 0xe3a010e6 => 5
	i32 3822443793, ; 144: DocumentFormat.OpenXml => 0xe3d5dd11 => 6
	i32 3829621856, ; 145: System.Numerics.dll => 0xe4436460 => 43
	i32 3870067495, ; 146: Syncfusion.XlsIO.Portable => 0xe6ac8b27 => 38
	i32 3876362041, ; 147: SQLite-net => 0xe70c9739 => 12
	i32 3896760992, ; 148: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 53
	i32 3952357212, ; 149: System.IO.Packaging.dll => 0xeb942f5c => 42
	i32 3953953790, ; 150: System.Text.Encoding.CodePages => 0xebac8bfe => 2
	i32 3955647286, ; 151: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 50
	i32 3965022950, ; 152: Syncfusion.SfComboBox.XForms.Android.dll => 0xec5572e6 => 26
	i32 4051712506, ; 153: Syncfusion.GridCommon.Portable => 0xf18039fa => 21
	i32 4090812903, ; 154: Syncfusion.SfNumericTextBox.Android => 0xf3d4d9e7 => 33
	i32 4105002889, ; 155: Mono.Security.dll => 0xf4ad5f89 => 79
	i32 4118017053, ; 156: Syncfusion.SfNumericTextBox.XForms.dll => 0xf573f41d => 35
	i32 4151237749, ; 157: System.Core => 0xf76edc75 => 40
	i32 4221941870, ; 158: Syncfusion.Pdf.Portable => 0xfba5b86e => 23
	i32 4260525087 ; 159: System.Buffers => 0xfdf2741f => 39
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [160 x i32] [
	i32 30, i32 75, i32 70, i32 31, i32 34, i32 47, i32 66, i32 9, ; 0..7
	i32 58, i32 48, i32 43, i32 60, i32 15, i32 25, i32 69, i32 57, ; 8..15
	i32 11, i32 41, i32 58, i32 55, i32 46, i32 20, i32 19, i32 26, ; 16..23
	i32 13, i32 77, i32 1, i32 32, i32 5, i32 75, i32 60, i32 7, ; 24..31
	i32 65, i32 50, i32 72, i32 62, i32 42, i32 41, i32 17, i32 14, ; 32..39
	i32 56, i32 6, i32 78, i32 65, i32 52, i32 44, i32 73, i32 77, ; 40..47
	i32 49, i32 25, i32 18, i32 36, i32 4, i32 63, i32 54, i32 37, ; 48..55
	i32 3, i32 74, i32 38, i32 15, i32 27, i32 51, i32 66, i32 40, ; 56..63
	i32 57, i32 63, i32 74, i32 69, i32 73, i32 39, i32 62, i32 61, ; 64..71
	i32 59, i32 16, i32 71, i32 32, i32 28, i32 3, i32 0, i32 64, ; 72..79
	i32 29, i32 19, i32 22, i32 13, i32 8, i32 9, i32 54, i32 24, ; 80..87
	i32 24, i32 48, i32 49, i32 2, i32 70, i32 67, i32 52, i32 45, ; 88..95
	i32 67, i32 37, i32 22, i32 18, i32 11, i32 20, i32 56, i32 31, ; 96..103
	i32 7, i32 33, i32 0, i32 4, i32 76, i32 28, i32 79, i32 51, ; 104..111
	i32 12, i32 55, i32 76, i32 34, i32 59, i32 68, i32 14, i32 53, ; 112..119
	i32 8, i32 64, i32 44, i32 78, i32 68, i32 45, i32 23, i32 21, ; 120..127
	i32 10, i32 46, i32 30, i32 71, i32 36, i32 17, i32 29, i32 27, ; 128..135
	i32 72, i32 61, i32 10, i32 47, i32 1, i32 35, i32 16, i32 5, ; 136..143
	i32 6, i32 43, i32 38, i32 12, i32 53, i32 42, i32 2, i32 50, ; 144..151
	i32 26, i32 21, i32 33, i32 79, i32 35, i32 40, i32 23, i32 39 ; 160..159
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}

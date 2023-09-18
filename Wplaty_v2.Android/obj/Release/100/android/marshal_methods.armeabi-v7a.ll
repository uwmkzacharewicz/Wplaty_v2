; ModuleID = 'obj\Release\100\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\100\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [162 x i32] [
	i32 19040051, ; 0: Syncfusion.SfGridConverter.XForms.dll => 0x1228733 => 31
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 76
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 71
	i32 66706743, ; 3: Syncfusion.SfMaskedEdit.XForms.Android.dll => 0x3f9dd37 => 32
	i32 90921095, ; 4: Syncfusion.SfNumericTextBox.XForms.Android => 0x56b5887 => 35
	i32 138867803, ; 5: Wplaty_v2.dll => 0x846f45b => 48
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 67
	i32 230752869, ; 7: Microsoft.CSharp.dll => 0xdc10265 => 9
	i32 280482487, ; 8: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 59
	i32 318968648, ; 9: Xamarin.AndroidX.Activity.dll => 0x13031348 => 49
	i32 321597661, ; 10: System.Numerics => 0x132b30dd => 44
	i32 342366114, ; 11: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 61
	i32 347068432, ; 12: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 16
	i32 377964854, ; 13: Syncfusion.SfAutoComplete.XForms => 0x16874936 => 26
	i32 442521989, ; 14: Xamarin.Essentials => 0x1a605985 => 70
	i32 450948140, ; 15: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 58
	i32 465846621, ; 16: mscorlib => 0x1bc4415d => 11
	i32 469710990, ; 17: System.dll => 0x1bff388e => 42
	i32 476646585, ; 18: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 59
	i32 627609679, ; 19: Xamarin.AndroidX.CustomView => 0x2568904f => 56
	i32 690569205, ; 20: System.Xml.Linq.dll => 0x29293ff5 => 47
	i32 708149616, ; 21: Syncfusion.Data.Portable.dll => 0x2a358170 => 21
	i32 719061231, ; 22: Syncfusion.Core.XForms.dll => 0x2adc00ef => 20
	i32 729844822, ; 23: Syncfusion.SfComboBox.XForms.Android => 0x2b808c56 => 27
	i32 748832960, ; 24: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 14
	i32 775507847, ; 25: System.IO.Compression => 0x2e394f87 => 78
	i32 809851609, ; 26: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 864956750, ; 27: Syncfusion.SfMaskedEdit.XForms => 0x338e314e => 33
	i32 898440345, ; 28: CsvHelper => 0x358d1c99 => 5
	i32 902159924, ; 29: Rg.Plugins.Popup => 0x35c5de34 => 12
	i32 928116545, ; 30: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 76
	i32 967690846, ; 31: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 61
	i32 974778368, ; 32: FormsViewGroup.dll => 0x3a19f000 => 7
	i32 1012816738, ; 33: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 66
	i32 1035644815, ; 34: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 51
	i32 1042160112, ; 35: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 73
	i32 1052210849, ; 36: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 63
	i32 1083751839, ; 37: System.IO.Packaging => 0x4098bd9f => 43
	i32 1098259244, ; 38: System => 0x41761b2c => 42
	i32 1264538220, ; 39: Syncfusion.Compression.Portable => 0x4b5f526c => 18
	i32 1292207520, ; 40: SQLitePCLRaw.core.dll => 0x4d0585a0 => 15
	i32 1293217323, ; 41: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 57
	i32 1338781641, ; 42: DocumentFormat.OpenXml.dll => 0x4fcc2fc9 => 6
	i32 1365406463, ; 43: System.ServiceModel.Internals.dll => 0x516272ff => 79
	i32 1376866003, ; 44: Xamarin.AndroidX.SavedState => 0x52114ed3 => 66
	i32 1406073936, ; 45: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 53
	i32 1411638395, ; 46: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 45
	i32 1460219004, ; 47: Xamarin.Forms.Xaml => 0x57092c7c => 74
	i32 1462112819, ; 48: System.IO.Compression.dll => 0x57261233 => 78
	i32 1469204771, ; 49: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 50
	i32 1489278563, ; 50: Syncfusion.SfAutoComplete.XForms.dll => 0x58c49663 => 26
	i32 1516315406, ; 51: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 19
	i32 1519760047, ; 52: Syncfusion.SfProgressBar.XForms.Android.dll => 0x5a95b2af => 37
	i32 1592978981, ; 53: System.Runtime.Serialization.dll => 0x5ef2ee25 => 4
	i32 1622152042, ; 54: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 64
	i32 1636350590, ; 55: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 55
	i32 1637556708, ; 56: Syncfusion.SfProgressBar.XForms.dll => 0x619b21e4 => 38
	i32 1639515021, ; 57: System.Net.Http.dll => 0x61b9038d => 3
	i32 1658251792, ; 58: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 75
	i32 1698018812, ; 59: Syncfusion.XlsIO.Portable.dll => 0x6535b5fc => 39
	i32 1711441057, ; 60: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 16
	i32 1712766919, ; 61: Syncfusion.SfComboBox.XForms.dll => 0x6616bfc7 => 28
	i32 1729485958, ; 62: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 52
	i32 1766324549, ; 63: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 67
	i32 1776026572, ; 64: System.Core.dll => 0x69dc03cc => 41
	i32 1788241197, ; 65: Xamarin.AndroidX.Fragment => 0x6a96652d => 58
	i32 1808609942, ; 66: Xamarin.AndroidX.Loader => 0x6bcd3296 => 64
	i32 1813201214, ; 67: Xamarin.Google.Android.Material => 0x6c13413e => 75
	i32 1867746548, ; 68: Xamarin.Essentials.dll => 0x6f538cf4 => 70
	i32 1878053835, ; 69: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 74
	i32 2011961780, ; 70: System.Buffers.dll => 0x77ec19b4 => 40
	i32 2019465201, ; 71: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 63
	i32 2055257422, ; 72: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 62
	i32 2097448633, ; 73: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 60
	i32 2103459038, ; 74: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 17
	i32 2126786730, ; 75: Xamarin.Forms.Platform.Android => 0x7ec430aa => 72
	i32 2192674484, ; 76: Syncfusion.SfMaskedEdit.XForms.dll => 0x82b18eb4 => 33
	i32 2195767025, ; 77: Syncfusion.SfDataGrid.XForms.Android.dll => 0x82e0bef1 => 29
	i32 2201231467, ; 78: System.Net.Http => 0x8334206b => 3
	i32 2274093155, ; 79: Wplaty_v2.Android.dll => 0x878be863 => 0
	i32 2279755925, ; 80: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 65
	i32 2324593299, ; 81: Syncfusion.SfDataGrid.XForms => 0x8a8e7a93 => 30
	i32 2343171156, ; 82: Syncfusion.Core.XForms => 0x8ba9f454 => 20
	i32 2354730003, ; 83: Syncfusion.Licensing => 0x8c5a5413 => 23
	i32 2465273461, ; 84: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 14
	i32 2475788418, ; 85: Java.Interop.dll => 0x93918882 => 8
	i32 2562349572, ; 86: Microsoft.CSharp => 0x98ba5a04 => 9
	i32 2620871830, ; 87: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 55
	i32 2635217119, ; 88: Syncfusion.SfAutoComplete.XForms.Android => 0x9d1238df => 25
	i32 2647358571, ; 89: Syncfusion.SfAutoComplete.XForms.Android.dll => 0x9dcb7c6b => 25
	i32 2732626843, ; 90: Xamarin.AndroidX.Activity => 0xa2e0939b => 49
	i32 2737747696, ; 91: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 50
	i32 2765824710, ; 92: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 2
	i32 2766581644, ; 93: Xamarin.Forms.Core => 0xa4e6af8c => 71
	i32 2778768386, ; 94: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 68
	i32 2810250172, ; 95: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 53
	i32 2819470561, ; 96: System.Xml.dll => 0xa80db4e1 => 46
	i32 2853208004, ; 97: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 68
	i32 2854891590, ; 98: Syncfusion.SfProgressBar.XForms => 0xaa2a3046 => 38
	i32 2861816565, ; 99: Rg.Plugins.Popup.dll => 0xaa93daf5 => 12
	i32 2868557005, ; 100: Syncfusion.Licensing.dll => 0xaafab4cd => 23
	i32 2874148507, ; 101: Syncfusion.Core.XForms.Android => 0xab50069b => 19
	i32 2905242038, ; 102: mscorlib.dll => 0xad2a79b6 => 11
	i32 2969700472, ; 103: Syncfusion.Data.Portable => 0xb1020878 => 21
	i32 2978675010, ; 104: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 57
	i32 3017678341, ; 105: Syncfusion.SfMaskedEdit.XForms.Android => 0xb3de1e05 => 32
	i32 3044182254, ; 106: FormsViewGroup => 0xb57288ee => 7
	i32 3048527850, ; 107: Syncfusion.SfNumericTextBox.Android.dll => 0xb5b4d7ea => 34
	i32 3079895995, ; 108: Wplaty_v2.Android => 0xb7937bbb => 0
	i32 3111772706, ; 109: System.Runtime.Serialization => 0xb979e222 => 4
	i32 3204380047, ; 110: System.Data.dll => 0xbefef58f => 77
	i32 3238542748, ; 111: Syncfusion.SfDataGrid.XForms.Android => 0xc1083d9c => 29
	i32 3247949154, ; 112: Mono.Security => 0xc197c562 => 80
	i32 3258312781, ; 113: Xamarin.AndroidX.CardView => 0xc235e84d => 52
	i32 3286872994, ; 114: SQLite-net.dll => 0xc3e9b3a2 => 13
	i32 3317135071, ; 115: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 56
	i32 3317144872, ; 116: System.Data => 0xc5b79d28 => 77
	i32 3329003366, ; 117: Syncfusion.SfNumericTextBox.XForms.Android.dll => 0xc66c8f66 => 35
	i32 3353484488, ; 118: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 60
	i32 3353544232, ; 119: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 69
	i32 3360279109, ; 120: SQLitePCLRaw.core => 0xc849ca45 => 15
	i32 3362522851, ; 121: Xamarin.AndroidX.Core => 0xc86c06e3 => 54
	i32 3366347497, ; 122: Java.Interop => 0xc8a662e9 => 8
	i32 3374999561, ; 123: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 65
	i32 3395150330, ; 124: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 45
	i32 3404865022, ; 125: System.ServiceModel.Internals => 0xcaf21dfe => 79
	i32 3407215217, ; 126: Xamarin.CommunityToolkit => 0xcb15fa71 => 69
	i32 3429136800, ; 127: System.Xml => 0xcc6479a0 => 46
	i32 3433996769, ; 128: Syncfusion.Pdf.Portable.dll => 0xccaea1e1 => 24
	i32 3448958507, ; 129: Syncfusion.GridCommon.Portable.dll => 0xcd92ee2b => 22
	i32 3476120550, ; 130: Mono.Android => 0xcf3163e6 => 10
	i32 3509114376, ; 131: System.Xml.Linq => 0xd128d608 => 47
	i32 3513050365, ; 132: Syncfusion.SfGridConverter.XForms => 0xd164e4fd => 31
	i32 3536029504, ; 133: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 72
	i32 3544322670, ; 134: Syncfusion.SfProgressBar.XForms.Android => 0xd342126e => 37
	i32 3551972787, ; 135: Syncfusion.Compression.Portable.dll => 0xd3b6cdb3 => 18
	i32 3612305132, ; 136: Syncfusion.SfDataGrid.XForms.dll => 0xd74f66ec => 30
	i32 3632266177, ; 137: Syncfusion.SfComboBox.XForms => 0xd87ffbc1 => 28
	i32 3632359727, ; 138: Xamarin.Forms.Platform => 0xd881692f => 73
	i32 3641597786, ; 139: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 62
	i32 3672681054, ; 140: Mono.Android.dll => 0xdae8aa5e => 10
	i32 3678792001, ; 141: Wplaty_v2 => 0xdb45e941 => 48
	i32 3689375977, ; 142: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3693477420, ; 143: Syncfusion.SfNumericTextBox.XForms => 0xdc25fe2c => 36
	i32 3754567612, ; 144: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 17
	i32 3818918118, ; 145: CsvHelper.dll => 0xe3a010e6 => 5
	i32 3822443793, ; 146: DocumentFormat.OpenXml => 0xe3d5dd11 => 6
	i32 3829621856, ; 147: System.Numerics.dll => 0xe4436460 => 44
	i32 3870067495, ; 148: Syncfusion.XlsIO.Portable => 0xe6ac8b27 => 39
	i32 3876362041, ; 149: SQLite-net => 0xe70c9739 => 13
	i32 3896760992, ; 150: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 54
	i32 3952357212, ; 151: System.IO.Packaging.dll => 0xeb942f5c => 43
	i32 3953953790, ; 152: System.Text.Encoding.CodePages => 0xebac8bfe => 2
	i32 3955647286, ; 153: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 51
	i32 3965022950, ; 154: Syncfusion.SfComboBox.XForms.Android.dll => 0xec5572e6 => 27
	i32 4051712506, ; 155: Syncfusion.GridCommon.Portable => 0xf18039fa => 22
	i32 4090812903, ; 156: Syncfusion.SfNumericTextBox.Android => 0xf3d4d9e7 => 34
	i32 4105002889, ; 157: Mono.Security.dll => 0xf4ad5f89 => 80
	i32 4118017053, ; 158: Syncfusion.SfNumericTextBox.XForms.dll => 0xf573f41d => 36
	i32 4151237749, ; 159: System.Core => 0xf76edc75 => 41
	i32 4221941870, ; 160: Syncfusion.Pdf.Portable => 0xfba5b86e => 24
	i32 4260525087 ; 161: System.Buffers => 0xfdf2741f => 40
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [162 x i32] [
	i32 31, i32 76, i32 71, i32 32, i32 35, i32 48, i32 67, i32 9, ; 0..7
	i32 59, i32 49, i32 44, i32 61, i32 16, i32 26, i32 70, i32 58, ; 8..15
	i32 11, i32 42, i32 59, i32 56, i32 47, i32 21, i32 20, i32 27, ; 16..23
	i32 14, i32 78, i32 1, i32 33, i32 5, i32 12, i32 76, i32 61, ; 24..31
	i32 7, i32 66, i32 51, i32 73, i32 63, i32 43, i32 42, i32 18, ; 32..39
	i32 15, i32 57, i32 6, i32 79, i32 66, i32 53, i32 45, i32 74, ; 40..47
	i32 78, i32 50, i32 26, i32 19, i32 37, i32 4, i32 64, i32 55, ; 48..55
	i32 38, i32 3, i32 75, i32 39, i32 16, i32 28, i32 52, i32 67, ; 56..63
	i32 41, i32 58, i32 64, i32 75, i32 70, i32 74, i32 40, i32 63, ; 64..71
	i32 62, i32 60, i32 17, i32 72, i32 33, i32 29, i32 3, i32 0, ; 72..79
	i32 65, i32 30, i32 20, i32 23, i32 14, i32 8, i32 9, i32 55, ; 80..87
	i32 25, i32 25, i32 49, i32 50, i32 2, i32 71, i32 68, i32 53, ; 88..95
	i32 46, i32 68, i32 38, i32 12, i32 23, i32 19, i32 11, i32 21, ; 96..103
	i32 57, i32 32, i32 7, i32 34, i32 0, i32 4, i32 77, i32 29, ; 104..111
	i32 80, i32 52, i32 13, i32 56, i32 77, i32 35, i32 60, i32 69, ; 112..119
	i32 15, i32 54, i32 8, i32 65, i32 45, i32 79, i32 69, i32 46, ; 120..127
	i32 24, i32 22, i32 10, i32 47, i32 31, i32 72, i32 37, i32 18, ; 128..135
	i32 30, i32 28, i32 73, i32 62, i32 10, i32 48, i32 1, i32 36, ; 136..143
	i32 17, i32 5, i32 6, i32 44, i32 39, i32 13, i32 54, i32 43, ; 144..151
	i32 2, i32 51, i32 27, i32 22, i32 34, i32 80, i32 36, i32 41, ; 152..159
	i32 24, i32 40 ; 160..161
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}

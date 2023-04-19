; ModuleID = 'obj\Debug\100\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\100\android\marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [264 x i32] [
	i32 19040051, ; 0: Syncfusion.SfGridConverter.XForms.dll => 0x1228733 => 38
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 88
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 118
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 113
	i32 66706743, ; 4: Syncfusion.SfMaskedEdit.XForms.Android.dll => 0x3f9dd37 => 39
	i32 90921095, ; 5: Syncfusion.SfNumericTextBox.XForms.Android => 0x56b5887 => 42
	i32 101534019, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 102
	i32 120558881, ; 7: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 102
	i32 138867803, ; 8: Wplaty_v2.dll => 0x846f45b => 58
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 69
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 103
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 67
	i32 230216969, ; 12: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 83
	i32 230752869, ; 13: Microsoft.CSharp.dll => 0xdc10265 => 17
	i32 231814094, ; 14: System.Globalization => 0xdd133ce => 8
	i32 232815796, ; 15: System.Web.Services => 0xde07cb4 => 125
	i32 261689757, ; 16: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 72
	i32 278686392, ; 17: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 87
	i32 280482487, ; 18: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 81
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 59
	i32 321597661, ; 20: System.Numerics => 0x132b30dd => 52
	i32 342366114, ; 21: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 85
	i32 347068432, ; 22: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 23
	i32 377964854, ; 23: Syncfusion.SfAutoComplete.XForms => 0x16874936 => 33
	i32 385762202, ; 24: System.Memory.dll => 0x16fe439a => 51
	i32 441335492, ; 25: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 71
	i32 442521989, ; 26: Xamarin.Essentials => 0x1a605985 => 112
	i32 442565967, ; 27: System.Collections => 0x1a61054f => 4
	i32 450948140, ; 28: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 80
	i32 465846621, ; 29: mscorlib => 0x1bc4415d => 19
	i32 469710990, ; 30: System.dll => 0x1bff388e => 49
	i32 476646585, ; 31: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 81
	i32 486930444, ; 32: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 92
	i32 498788369, ; 33: System.ObjectModel => 0x1dbae811 => 127
	i32 526420162, ; 34: System.Transactions.dll => 0x1f6088c2 => 120
	i32 545304856, ; 35: System.Runtime.Extensions => 0x2080b118 => 5
	i32 605376203, ; 36: System.IO.Compression.FileSystem => 0x24154ecb => 123
	i32 627609679, ; 37: Xamarin.AndroidX.CustomView => 0x2568904f => 76
	i32 663517072, ; 38: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 108
	i32 666292255, ; 39: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 64
	i32 690569205, ; 40: System.Xml.Linq.dll => 0x29293ff5 => 57
	i32 708149616, ; 41: Syncfusion.Data.Portable.dll => 0x2a358170 => 28
	i32 719061231, ; 42: Syncfusion.Core.XForms.dll => 0x2adc00ef => 27
	i32 729844822, ; 43: Syncfusion.SfComboBox.XForms.Android => 0x2b808c56 => 34
	i32 748832960, ; 44: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 21
	i32 775507847, ; 45: System.IO.Compression => 0x2e394f87 => 122
	i32 809851609, ; 46: System.Drawing.Common.dll => 0x30455ad9 => 9
	i32 843511501, ; 47: Xamarin.AndroidX.Print => 0x3246f6cd => 99
	i32 864956750, ; 48: Syncfusion.SfMaskedEdit.XForms => 0x338e314e => 40
	i32 877678880, ; 49: System.Globalization.dll => 0x34505120 => 8
	i32 898440345, ; 50: CsvHelper => 0x358d1c99 => 13
	i32 928116545, ; 51: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 118
	i32 967690846, ; 52: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 85
	i32 974778368, ; 53: FormsViewGroup.dll => 0x3a19f000 => 15
	i32 992768348, ; 54: System.Collections.dll => 0x3b2c715c => 4
	i32 1012816738, ; 55: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 101
	i32 1035644815, ; 56: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 63
	i32 1042160112, ; 57: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 115
	i32 1052210849, ; 58: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 89
	i32 1083751839, ; 59: System.IO.Packaging => 0x4098bd9f => 50
	i32 1098259244, ; 60: System => 0x41761b2c => 49
	i32 1175144683, ; 61: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 106
	i32 1178241025, ; 62: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 96
	i32 1204270330, ; 63: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 64
	i32 1264538220, ; 64: Syncfusion.Compression.Portable => 0x4b5f526c => 25
	i32 1267360935, ; 65: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 107
	i32 1292207520, ; 66: SQLitePCLRaw.core.dll => 0x4d0585a0 => 22
	i32 1293217323, ; 67: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 78
	i32 1324164729, ; 68: System.Linq => 0x4eed2679 => 130
	i32 1338781641, ; 69: DocumentFormat.OpenXml.dll => 0x4fcc2fc9 => 14
	i32 1365406463, ; 70: System.ServiceModel.Internals.dll => 0x516272ff => 126
	i32 1376866003, ; 71: Xamarin.AndroidX.SavedState => 0x52114ed3 => 101
	i32 1379779777, ; 72: System.Resources.ResourceManager => 0x523dc4c1 => 2
	i32 1395857551, ; 73: Xamarin.AndroidX.Media.dll => 0x5333188f => 93
	i32 1406073936, ; 74: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 73
	i32 1411638395, ; 75: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 54
	i32 1457743152, ; 76: System.Runtime.Extensions.dll => 0x56e36530 => 5
	i32 1460219004, ; 77: Xamarin.Forms.Xaml => 0x57092c7c => 116
	i32 1462112819, ; 78: System.IO.Compression.dll => 0x57261233 => 122
	i32 1469204771, ; 79: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 62
	i32 1489278563, ; 80: Syncfusion.SfAutoComplete.XForms.dll => 0x58c49663 => 33
	i32 1516315406, ; 81: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 26
	i32 1519760047, ; 82: Syncfusion.SfProgressBar.XForms.Android.dll => 0x5a95b2af => 44
	i32 1543031311, ; 83: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 129
	i32 1550322496, ; 84: System.Reflection.Extensions.dll => 0x5c680b40 => 6
	i32 1582372066, ; 85: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 77
	i32 1592978981, ; 86: System.Runtime.Serialization.dll => 0x5ef2ee25 => 12
	i32 1622152042, ; 87: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 91
	i32 1624863272, ; 88: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 110
	i32 1636350590, ; 89: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 75
	i32 1637556708, ; 90: Syncfusion.SfProgressBar.XForms.dll => 0x619b21e4 => 45
	i32 1639515021, ; 91: System.Net.Http.dll => 0x61b9038d => 11
	i32 1639986890, ; 92: System.Text.RegularExpressions => 0x61c036ca => 129
	i32 1657153582, ; 93: System.Runtime => 0x62c6282e => 55
	i32 1658241508, ; 94: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 104
	i32 1658251792, ; 95: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 117
	i32 1670060433, ; 96: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 72
	i32 1698018812, ; 97: Syncfusion.XlsIO.Portable.dll => 0x6535b5fc => 46
	i32 1711441057, ; 98: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 23
	i32 1712766919, ; 99: Syncfusion.SfComboBox.XForms.dll => 0x6616bfc7 => 35
	i32 1726116996, ; 100: System.Reflection.dll => 0x66e27484 => 3
	i32 1729485958, ; 101: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 68
	i32 1765942094, ; 102: System.Reflection.Extensions => 0x6942234e => 6
	i32 1766324549, ; 103: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 103
	i32 1776026572, ; 104: System.Core.dll => 0x69dc03cc => 48
	i32 1788241197, ; 105: Xamarin.AndroidX.Fragment => 0x6a96652d => 80
	i32 1808609942, ; 106: Xamarin.AndroidX.Loader => 0x6bcd3296 => 91
	i32 1813201214, ; 107: Xamarin.Google.Android.Material => 0x6c13413e => 117
	i32 1818569960, ; 108: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 97
	i32 1867746548, ; 109: Xamarin.Essentials.dll => 0x6f538cf4 => 112
	i32 1878053835, ; 110: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 116
	i32 1885316902, ; 111: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 65
	i32 1900610850, ; 112: System.Resources.ResourceManager.dll => 0x71490522 => 2
	i32 1919157823, ; 113: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 94
	i32 2011961780, ; 114: System.Buffers.dll => 0x77ec19b4 => 47
	i32 2019465201, ; 115: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 89
	i32 2055257422, ; 116: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 86
	i32 2079903147, ; 117: System.Runtime.dll => 0x7bf8cdab => 55
	i32 2090596640, ; 118: System.Numerics.Vectors => 0x7c9bf920 => 53
	i32 2097448633, ; 119: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 82
	i32 2103459038, ; 120: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 24
	i32 2126786730, ; 121: Xamarin.Forms.Platform.Android => 0x7ec430aa => 114
	i32 2192674484, ; 122: Syncfusion.SfMaskedEdit.XForms.dll => 0x82b18eb4 => 40
	i32 2193016926, ; 123: System.ObjectModel.dll => 0x82b6c85e => 127
	i32 2195767025, ; 124: Syncfusion.SfDataGrid.XForms.Android.dll => 0x82e0bef1 => 36
	i32 2201231467, ; 125: System.Net.Http => 0x8334206b => 11
	i32 2217644978, ; 126: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 106
	i32 2244775296, ; 127: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 92
	i32 2256548716, ; 128: Xamarin.AndroidX.MultiDex => 0x8680336c => 94
	i32 2261435625, ; 129: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 84
	i32 2274093155, ; 130: Wplaty_v2.Android.dll => 0x878be863 => 0
	i32 2279755925, ; 131: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 100
	i32 2315684594, ; 132: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 60
	i32 2324593299, ; 133: Syncfusion.SfDataGrid.XForms => 0x8a8e7a93 => 37
	i32 2343171156, ; 134: Syncfusion.Core.XForms => 0x8ba9f454 => 27
	i32 2354730003, ; 135: Syncfusion.Licensing => 0x8c5a5413 => 30
	i32 2409053734, ; 136: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 98
	i32 2454642406, ; 137: System.Text.Encoding.dll => 0x924edee6 => 7
	i32 2465273461, ; 138: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 21
	i32 2465532216, ; 139: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 71
	i32 2471841756, ; 140: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 141: Java.Interop.dll => 0x93918882 => 16
	i32 2501346920, ; 142: System.Data.DataSetExtensions => 0x95178668 => 121
	i32 2505896520, ; 143: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 88
	i32 2562349572, ; 144: Microsoft.CSharp => 0x98ba5a04 => 17
	i32 2581819634, ; 145: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 107
	i32 2620871830, ; 146: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 75
	i32 2624644809, ; 147: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 79
	i32 2633051222, ; 148: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 87
	i32 2635217119, ; 149: Syncfusion.SfAutoComplete.XForms.Android => 0x9d1238df => 32
	i32 2647358571, ; 150: Syncfusion.SfAutoComplete.XForms.Android.dll => 0x9dcb7c6b => 32
	i32 2701096212, ; 151: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 104
	i32 2732626843, ; 152: Xamarin.AndroidX.Activity => 0xa2e0939b => 59
	i32 2737747696, ; 153: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 62
	i32 2765824710, ; 154: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 10
	i32 2766581644, ; 155: Xamarin.Forms.Core => 0xa4e6af8c => 113
	i32 2778768386, ; 156: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 109
	i32 2810250172, ; 157: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 73
	i32 2819470561, ; 158: System.Xml.dll => 0xa80db4e1 => 56
	i32 2853208004, ; 159: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 109
	i32 2854891590, ; 160: Syncfusion.SfProgressBar.XForms => 0xaa2a3046 => 45
	i32 2855708567, ; 161: Xamarin.AndroidX.Transition => 0xaa36a797 => 105
	i32 2868557005, ; 162: Syncfusion.Licensing.dll => 0xaafab4cd => 30
	i32 2874148507, ; 163: Syncfusion.Core.XForms.Android => 0xab50069b => 26
	i32 2901442782, ; 164: System.Reflection => 0xacf080de => 3
	i32 2903344695, ; 165: System.ComponentModel.Composition => 0xad0d8637 => 124
	i32 2905242038, ; 166: mscorlib.dll => 0xad2a79b6 => 19
	i32 2916838712, ; 167: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 110
	i32 2919462931, ; 168: System.Numerics.Vectors.dll => 0xae037813 => 53
	i32 2921128767, ; 169: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 61
	i32 2969700472, ; 170: Syncfusion.Data.Portable => 0xb1020878 => 28
	i32 2978675010, ; 171: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 78
	i32 3017678341, ; 172: Syncfusion.SfMaskedEdit.XForms.Android => 0xb3de1e05 => 39
	i32 3024354802, ; 173: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 83
	i32 3044182254, ; 174: FormsViewGroup => 0xb57288ee => 15
	i32 3048527850, ; 175: Syncfusion.SfNumericTextBox.Android.dll => 0xb5b4d7ea => 41
	i32 3057625584, ; 176: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 95
	i32 3079895995, ; 177: Wplaty_v2.Android => 0xb7937bbb => 0
	i32 3111772706, ; 178: System.Runtime.Serialization => 0xb979e222 => 12
	i32 3204380047, ; 179: System.Data.dll => 0xbefef58f => 119
	i32 3211777861, ; 180: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 77
	i32 3220365878, ; 181: System.Threading => 0xbff2e236 => 128
	i32 3238542748, ; 182: Syncfusion.SfDataGrid.XForms.Android => 0xc1083d9c => 36
	i32 3247949154, ; 183: Mono.Security => 0xc197c562 => 131
	i32 3258312781, ; 184: Xamarin.AndroidX.CardView => 0xc235e84d => 68
	i32 3267021929, ; 185: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 66
	i32 3286872994, ; 186: SQLite-net.dll => 0xc3e9b3a2 => 20
	i32 3299363146, ; 187: System.Text.Encoding => 0xc4a8494a => 7
	i32 3317135071, ; 188: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 76
	i32 3317144872, ; 189: System.Data => 0xc5b79d28 => 119
	i32 3329003366, ; 190: Syncfusion.SfNumericTextBox.XForms.Android.dll => 0xc66c8f66 => 42
	i32 3340431453, ; 191: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 65
	i32 3346324047, ; 192: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 96
	i32 3353484488, ; 193: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 82
	i32 3353544232, ; 194: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 111
	i32 3360279109, ; 195: SQLitePCLRaw.core => 0xc849ca45 => 22
	i32 3362522851, ; 196: Xamarin.AndroidX.Core => 0xc86c06e3 => 74
	i32 3366347497, ; 197: Java.Interop => 0xc8a662e9 => 16
	i32 3374999561, ; 198: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 100
	i32 3395150330, ; 199: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 54
	i32 3404865022, ; 200: System.ServiceModel.Internals => 0xcaf21dfe => 126
	i32 3407215217, ; 201: Xamarin.CommunityToolkit => 0xcb15fa71 => 111
	i32 3429136800, ; 202: System.Xml => 0xcc6479a0 => 56
	i32 3430777524, ; 203: netstandard => 0xcc7d82b4 => 1
	i32 3433996769, ; 204: Syncfusion.Pdf.Portable.dll => 0xccaea1e1 => 31
	i32 3441283291, ; 205: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 79
	i32 3448958507, ; 206: Syncfusion.GridCommon.Portable.dll => 0xcd92ee2b => 29
	i32 3476120550, ; 207: Mono.Android => 0xcf3163e6 => 18
	i32 3486566296, ; 208: System.Transactions => 0xcfd0c798 => 120
	i32 3493954962, ; 209: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 70
	i32 3501239056, ; 210: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 66
	i32 3509114376, ; 211: System.Xml.Linq => 0xd128d608 => 57
	i32 3513050365, ; 212: Syncfusion.SfGridConverter.XForms => 0xd164e4fd => 38
	i32 3536029504, ; 213: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 114
	i32 3544322670, ; 214: Syncfusion.SfProgressBar.XForms.Android => 0xd342126e => 44
	i32 3551972787, ; 215: Syncfusion.Compression.Portable.dll => 0xd3b6cdb3 => 25
	i32 3567349600, ; 216: System.ComponentModel.Composition.dll => 0xd4a16f60 => 124
	i32 3608519521, ; 217: System.Linq.dll => 0xd715a361 => 130
	i32 3612305132, ; 218: Syncfusion.SfDataGrid.XForms.dll => 0xd74f66ec => 37
	i32 3618140916, ; 219: Xamarin.AndroidX.Preference => 0xd7a872f4 => 98
	i32 3627220390, ; 220: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 99
	i32 3632266177, ; 221: Syncfusion.SfComboBox.XForms => 0xd87ffbc1 => 35
	i32 3632359727, ; 222: Xamarin.Forms.Platform => 0xd881692f => 115
	i32 3633644679, ; 223: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 61
	i32 3641597786, ; 224: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 86
	i32 3672681054, ; 225: Mono.Android.dll => 0xdae8aa5e => 18
	i32 3676310014, ; 226: System.Web.Services.dll => 0xdb2009fe => 125
	i32 3678792001, ; 227: Wplaty_v2 => 0xdb45e941 => 58
	i32 3682565725, ; 228: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 67
	i32 3684561358, ; 229: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 70
	i32 3689375977, ; 230: System.Drawing.Common => 0xdbe768e9 => 9
	i32 3693477420, ; 231: Syncfusion.SfNumericTextBox.XForms => 0xdc25fe2c => 43
	i32 3718780102, ; 232: Xamarin.AndroidX.Annotation => 0xdda814c6 => 60
	i32 3724971120, ; 233: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 95
	i32 3754567612, ; 234: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 24
	i32 3758932259, ; 235: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 84
	i32 3786282454, ; 236: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 69
	i32 3818918118, ; 237: CsvHelper.dll => 0xe3a010e6 => 13
	i32 3822443793, ; 238: DocumentFormat.OpenXml => 0xe3d5dd11 => 14
	i32 3822602673, ; 239: Xamarin.AndroidX.Media => 0xe3d849b1 => 93
	i32 3829621856, ; 240: System.Numerics.dll => 0xe4436460 => 52
	i32 3870067495, ; 241: Syncfusion.XlsIO.Portable => 0xe6ac8b27 => 46
	i32 3876362041, ; 242: SQLite-net => 0xe70c9739 => 20
	i32 3885922214, ; 243: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 105
	i32 3896760992, ; 244: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 74
	i32 3920810846, ; 245: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 123
	i32 3921031405, ; 246: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 108
	i32 3931092270, ; 247: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 97
	i32 3945713374, ; 248: System.Data.DataSetExtensions.dll => 0xeb2ecede => 121
	i32 3952357212, ; 249: System.IO.Packaging.dll => 0xeb942f5c => 50
	i32 3953953790, ; 250: System.Text.Encoding.CodePages => 0xebac8bfe => 10
	i32 3955647286, ; 251: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 63
	i32 3965022950, ; 252: Syncfusion.SfComboBox.XForms.Android.dll => 0xec5572e6 => 34
	i32 4025784931, ; 253: System.Memory => 0xeff49a63 => 51
	i32 4051712506, ; 254: Syncfusion.GridCommon.Portable => 0xf18039fa => 29
	i32 4073602200, ; 255: System.Threading.dll => 0xf2ce3c98 => 128
	i32 4090812903, ; 256: Syncfusion.SfNumericTextBox.Android => 0xf3d4d9e7 => 41
	i32 4105002889, ; 257: Mono.Security.dll => 0xf4ad5f89 => 131
	i32 4118017053, ; 258: Syncfusion.SfNumericTextBox.XForms.dll => 0xf573f41d => 43
	i32 4151237749, ; 259: System.Core => 0xf76edc75 => 48
	i32 4182413190, ; 260: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 90
	i32 4221941870, ; 261: Syncfusion.Pdf.Portable => 0xfba5b86e => 31
	i32 4260525087, ; 262: System.Buffers => 0xfdf2741f => 47
	i32 4292120959 ; 263: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 90
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [264 x i32] [
	i32 38, i32 88, i32 118, i32 113, i32 39, i32 42, i32 102, i32 102, ; 0..7
	i32 58, i32 69, i32 103, i32 67, i32 83, i32 17, i32 8, i32 125, ; 8..15
	i32 72, i32 87, i32 81, i32 59, i32 52, i32 85, i32 23, i32 33, ; 16..23
	i32 51, i32 71, i32 112, i32 4, i32 80, i32 19, i32 49, i32 81, ; 24..31
	i32 92, i32 127, i32 120, i32 5, i32 123, i32 76, i32 108, i32 64, ; 32..39
	i32 57, i32 28, i32 27, i32 34, i32 21, i32 122, i32 9, i32 99, ; 40..47
	i32 40, i32 8, i32 13, i32 118, i32 85, i32 15, i32 4, i32 101, ; 48..55
	i32 63, i32 115, i32 89, i32 50, i32 49, i32 106, i32 96, i32 64, ; 56..63
	i32 25, i32 107, i32 22, i32 78, i32 130, i32 14, i32 126, i32 101, ; 64..71
	i32 2, i32 93, i32 73, i32 54, i32 5, i32 116, i32 122, i32 62, ; 72..79
	i32 33, i32 26, i32 44, i32 129, i32 6, i32 77, i32 12, i32 91, ; 80..87
	i32 110, i32 75, i32 45, i32 11, i32 129, i32 55, i32 104, i32 117, ; 88..95
	i32 72, i32 46, i32 23, i32 35, i32 3, i32 68, i32 6, i32 103, ; 96..103
	i32 48, i32 80, i32 91, i32 117, i32 97, i32 112, i32 116, i32 65, ; 104..111
	i32 2, i32 94, i32 47, i32 89, i32 86, i32 55, i32 53, i32 82, ; 112..119
	i32 24, i32 114, i32 40, i32 127, i32 36, i32 11, i32 106, i32 92, ; 120..127
	i32 94, i32 84, i32 0, i32 100, i32 60, i32 37, i32 27, i32 30, ; 128..135
	i32 98, i32 7, i32 21, i32 71, i32 1, i32 16, i32 121, i32 88, ; 136..143
	i32 17, i32 107, i32 75, i32 79, i32 87, i32 32, i32 32, i32 104, ; 144..151
	i32 59, i32 62, i32 10, i32 113, i32 109, i32 73, i32 56, i32 109, ; 152..159
	i32 45, i32 105, i32 30, i32 26, i32 3, i32 124, i32 19, i32 110, ; 160..167
	i32 53, i32 61, i32 28, i32 78, i32 39, i32 83, i32 15, i32 41, ; 168..175
	i32 95, i32 0, i32 12, i32 119, i32 77, i32 128, i32 36, i32 131, ; 176..183
	i32 68, i32 66, i32 20, i32 7, i32 76, i32 119, i32 42, i32 65, ; 184..191
	i32 96, i32 82, i32 111, i32 22, i32 74, i32 16, i32 100, i32 54, ; 192..199
	i32 126, i32 111, i32 56, i32 1, i32 31, i32 79, i32 29, i32 18, ; 200..207
	i32 120, i32 70, i32 66, i32 57, i32 38, i32 114, i32 44, i32 25, ; 208..215
	i32 124, i32 130, i32 37, i32 98, i32 99, i32 35, i32 115, i32 61, ; 216..223
	i32 86, i32 18, i32 125, i32 58, i32 67, i32 70, i32 9, i32 43, ; 224..231
	i32 60, i32 95, i32 24, i32 84, i32 69, i32 13, i32 14, i32 93, ; 232..239
	i32 52, i32 46, i32 20, i32 105, i32 74, i32 123, i32 108, i32 97, ; 240..247
	i32 121, i32 50, i32 10, i32 63, i32 34, i32 51, i32 29, i32 128, ; 248..255
	i32 41, i32 131, i32 43, i32 48, i32 90, i32 31, i32 47, i32 90 ; 264..263
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
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}

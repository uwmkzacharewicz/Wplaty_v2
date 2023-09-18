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
@assembly_image_cache_hashes = local_unnamed_addr constant [266 x i32] [
	i32 19040051, ; 0: Syncfusion.SfGridConverter.XForms.dll => 0x1228733 => 39
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 89
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 119
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 114
	i32 66706743, ; 4: Syncfusion.SfMaskedEdit.XForms.Android.dll => 0x3f9dd37 => 40
	i32 90921095, ; 5: Syncfusion.SfNumericTextBox.XForms.Android => 0x56b5887 => 43
	i32 101534019, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 103
	i32 120558881, ; 7: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 103
	i32 138867803, ; 8: Wplaty_v2.dll => 0x846f45b => 59
	i32 165246403, ; 9: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 70
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 104
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 68
	i32 230216969, ; 12: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 84
	i32 230752869, ; 13: Microsoft.CSharp.dll => 0xdc10265 => 17
	i32 231814094, ; 14: System.Globalization => 0xdd133ce => 8
	i32 232815796, ; 15: System.Web.Services => 0xde07cb4 => 126
	i32 261689757, ; 16: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 73
	i32 278686392, ; 17: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 88
	i32 280482487, ; 18: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 82
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 60
	i32 321597661, ; 20: System.Numerics => 0x132b30dd => 53
	i32 342366114, ; 21: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 86
	i32 347068432, ; 22: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 24
	i32 377964854, ; 23: Syncfusion.SfAutoComplete.XForms => 0x16874936 => 34
	i32 385762202, ; 24: System.Memory.dll => 0x16fe439a => 52
	i32 441335492, ; 25: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 72
	i32 442521989, ; 26: Xamarin.Essentials => 0x1a605985 => 113
	i32 442565967, ; 27: System.Collections => 0x1a61054f => 4
	i32 450948140, ; 28: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 81
	i32 465846621, ; 29: mscorlib => 0x1bc4415d => 19
	i32 469710990, ; 30: System.dll => 0x1bff388e => 50
	i32 476646585, ; 31: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 82
	i32 486930444, ; 32: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 93
	i32 498788369, ; 33: System.ObjectModel => 0x1dbae811 => 128
	i32 526420162, ; 34: System.Transactions.dll => 0x1f6088c2 => 121
	i32 545304856, ; 35: System.Runtime.Extensions => 0x2080b118 => 5
	i32 605376203, ; 36: System.IO.Compression.FileSystem => 0x24154ecb => 124
	i32 627609679, ; 37: Xamarin.AndroidX.CustomView => 0x2568904f => 77
	i32 663517072, ; 38: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 109
	i32 666292255, ; 39: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 65
	i32 690569205, ; 40: System.Xml.Linq.dll => 0x29293ff5 => 58
	i32 708149616, ; 41: Syncfusion.Data.Portable.dll => 0x2a358170 => 29
	i32 719061231, ; 42: Syncfusion.Core.XForms.dll => 0x2adc00ef => 28
	i32 729844822, ; 43: Syncfusion.SfComboBox.XForms.Android => 0x2b808c56 => 35
	i32 748832960, ; 44: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 22
	i32 775507847, ; 45: System.IO.Compression => 0x2e394f87 => 123
	i32 809851609, ; 46: System.Drawing.Common.dll => 0x30455ad9 => 9
	i32 843511501, ; 47: Xamarin.AndroidX.Print => 0x3246f6cd => 100
	i32 864956750, ; 48: Syncfusion.SfMaskedEdit.XForms => 0x338e314e => 41
	i32 877678880, ; 49: System.Globalization.dll => 0x34505120 => 8
	i32 898440345, ; 50: CsvHelper => 0x358d1c99 => 13
	i32 902159924, ; 51: Rg.Plugins.Popup => 0x35c5de34 => 20
	i32 928116545, ; 52: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 119
	i32 967690846, ; 53: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 86
	i32 974778368, ; 54: FormsViewGroup.dll => 0x3a19f000 => 15
	i32 992768348, ; 55: System.Collections.dll => 0x3b2c715c => 4
	i32 1012816738, ; 56: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 102
	i32 1035644815, ; 57: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 64
	i32 1042160112, ; 58: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 116
	i32 1052210849, ; 59: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 90
	i32 1083751839, ; 60: System.IO.Packaging => 0x4098bd9f => 51
	i32 1098259244, ; 61: System => 0x41761b2c => 50
	i32 1175144683, ; 62: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 107
	i32 1178241025, ; 63: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 97
	i32 1204270330, ; 64: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 65
	i32 1264538220, ; 65: Syncfusion.Compression.Portable => 0x4b5f526c => 26
	i32 1267360935, ; 66: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 108
	i32 1292207520, ; 67: SQLitePCLRaw.core.dll => 0x4d0585a0 => 23
	i32 1293217323, ; 68: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 79
	i32 1324164729, ; 69: System.Linq => 0x4eed2679 => 131
	i32 1338781641, ; 70: DocumentFormat.OpenXml.dll => 0x4fcc2fc9 => 14
	i32 1365406463, ; 71: System.ServiceModel.Internals.dll => 0x516272ff => 127
	i32 1376866003, ; 72: Xamarin.AndroidX.SavedState => 0x52114ed3 => 102
	i32 1379779777, ; 73: System.Resources.ResourceManager => 0x523dc4c1 => 2
	i32 1395857551, ; 74: Xamarin.AndroidX.Media.dll => 0x5333188f => 94
	i32 1406073936, ; 75: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 74
	i32 1411638395, ; 76: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 55
	i32 1457743152, ; 77: System.Runtime.Extensions.dll => 0x56e36530 => 5
	i32 1460219004, ; 78: Xamarin.Forms.Xaml => 0x57092c7c => 117
	i32 1462112819, ; 79: System.IO.Compression.dll => 0x57261233 => 123
	i32 1469204771, ; 80: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 63
	i32 1489278563, ; 81: Syncfusion.SfAutoComplete.XForms.dll => 0x58c49663 => 34
	i32 1516315406, ; 82: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 27
	i32 1519760047, ; 83: Syncfusion.SfProgressBar.XForms.Android.dll => 0x5a95b2af => 45
	i32 1543031311, ; 84: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 130
	i32 1550322496, ; 85: System.Reflection.Extensions.dll => 0x5c680b40 => 6
	i32 1582372066, ; 86: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 78
	i32 1592978981, ; 87: System.Runtime.Serialization.dll => 0x5ef2ee25 => 12
	i32 1622152042, ; 88: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 92
	i32 1624863272, ; 89: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 111
	i32 1636350590, ; 90: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 76
	i32 1637556708, ; 91: Syncfusion.SfProgressBar.XForms.dll => 0x619b21e4 => 46
	i32 1639515021, ; 92: System.Net.Http.dll => 0x61b9038d => 11
	i32 1639986890, ; 93: System.Text.RegularExpressions => 0x61c036ca => 130
	i32 1657153582, ; 94: System.Runtime => 0x62c6282e => 56
	i32 1658241508, ; 95: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 105
	i32 1658251792, ; 96: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 118
	i32 1670060433, ; 97: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 73
	i32 1698018812, ; 98: Syncfusion.XlsIO.Portable.dll => 0x6535b5fc => 47
	i32 1711441057, ; 99: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 24
	i32 1712766919, ; 100: Syncfusion.SfComboBox.XForms.dll => 0x6616bfc7 => 36
	i32 1726116996, ; 101: System.Reflection.dll => 0x66e27484 => 3
	i32 1729485958, ; 102: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 69
	i32 1765942094, ; 103: System.Reflection.Extensions => 0x6942234e => 6
	i32 1766324549, ; 104: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 104
	i32 1776026572, ; 105: System.Core.dll => 0x69dc03cc => 49
	i32 1788241197, ; 106: Xamarin.AndroidX.Fragment => 0x6a96652d => 81
	i32 1808609942, ; 107: Xamarin.AndroidX.Loader => 0x6bcd3296 => 92
	i32 1813201214, ; 108: Xamarin.Google.Android.Material => 0x6c13413e => 118
	i32 1818569960, ; 109: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 98
	i32 1867746548, ; 110: Xamarin.Essentials.dll => 0x6f538cf4 => 113
	i32 1878053835, ; 111: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 117
	i32 1885316902, ; 112: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 66
	i32 1900610850, ; 113: System.Resources.ResourceManager.dll => 0x71490522 => 2
	i32 1919157823, ; 114: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 95
	i32 2011961780, ; 115: System.Buffers.dll => 0x77ec19b4 => 48
	i32 2019465201, ; 116: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 90
	i32 2055257422, ; 117: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 87
	i32 2079903147, ; 118: System.Runtime.dll => 0x7bf8cdab => 56
	i32 2090596640, ; 119: System.Numerics.Vectors => 0x7c9bf920 => 54
	i32 2097448633, ; 120: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 83
	i32 2103459038, ; 121: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 25
	i32 2126786730, ; 122: Xamarin.Forms.Platform.Android => 0x7ec430aa => 115
	i32 2192674484, ; 123: Syncfusion.SfMaskedEdit.XForms.dll => 0x82b18eb4 => 41
	i32 2193016926, ; 124: System.ObjectModel.dll => 0x82b6c85e => 128
	i32 2195767025, ; 125: Syncfusion.SfDataGrid.XForms.Android.dll => 0x82e0bef1 => 37
	i32 2201231467, ; 126: System.Net.Http => 0x8334206b => 11
	i32 2217644978, ; 127: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 107
	i32 2244775296, ; 128: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 93
	i32 2256548716, ; 129: Xamarin.AndroidX.MultiDex => 0x8680336c => 95
	i32 2261435625, ; 130: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 85
	i32 2274093155, ; 131: Wplaty_v2.Android.dll => 0x878be863 => 0
	i32 2279755925, ; 132: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 101
	i32 2315684594, ; 133: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 61
	i32 2324593299, ; 134: Syncfusion.SfDataGrid.XForms => 0x8a8e7a93 => 38
	i32 2343171156, ; 135: Syncfusion.Core.XForms => 0x8ba9f454 => 28
	i32 2354730003, ; 136: Syncfusion.Licensing => 0x8c5a5413 => 31
	i32 2409053734, ; 137: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 99
	i32 2454642406, ; 138: System.Text.Encoding.dll => 0x924edee6 => 7
	i32 2465273461, ; 139: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 22
	i32 2465532216, ; 140: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 72
	i32 2471841756, ; 141: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 142: Java.Interop.dll => 0x93918882 => 16
	i32 2501346920, ; 143: System.Data.DataSetExtensions => 0x95178668 => 122
	i32 2505896520, ; 144: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 89
	i32 2562349572, ; 145: Microsoft.CSharp => 0x98ba5a04 => 17
	i32 2581819634, ; 146: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 108
	i32 2620871830, ; 147: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 76
	i32 2624644809, ; 148: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 80
	i32 2633051222, ; 149: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 88
	i32 2635217119, ; 150: Syncfusion.SfAutoComplete.XForms.Android => 0x9d1238df => 33
	i32 2647358571, ; 151: Syncfusion.SfAutoComplete.XForms.Android.dll => 0x9dcb7c6b => 33
	i32 2701096212, ; 152: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 105
	i32 2732626843, ; 153: Xamarin.AndroidX.Activity => 0xa2e0939b => 60
	i32 2737747696, ; 154: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 63
	i32 2765824710, ; 155: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 10
	i32 2766581644, ; 156: Xamarin.Forms.Core => 0xa4e6af8c => 114
	i32 2778768386, ; 157: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 110
	i32 2810250172, ; 158: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 74
	i32 2819470561, ; 159: System.Xml.dll => 0xa80db4e1 => 57
	i32 2853208004, ; 160: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 110
	i32 2854891590, ; 161: Syncfusion.SfProgressBar.XForms => 0xaa2a3046 => 46
	i32 2855708567, ; 162: Xamarin.AndroidX.Transition => 0xaa36a797 => 106
	i32 2861816565, ; 163: Rg.Plugins.Popup.dll => 0xaa93daf5 => 20
	i32 2868557005, ; 164: Syncfusion.Licensing.dll => 0xaafab4cd => 31
	i32 2874148507, ; 165: Syncfusion.Core.XForms.Android => 0xab50069b => 27
	i32 2901442782, ; 166: System.Reflection => 0xacf080de => 3
	i32 2903344695, ; 167: System.ComponentModel.Composition => 0xad0d8637 => 125
	i32 2905242038, ; 168: mscorlib.dll => 0xad2a79b6 => 19
	i32 2916838712, ; 169: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 111
	i32 2919462931, ; 170: System.Numerics.Vectors.dll => 0xae037813 => 54
	i32 2921128767, ; 171: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 62
	i32 2969700472, ; 172: Syncfusion.Data.Portable => 0xb1020878 => 29
	i32 2978675010, ; 173: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 79
	i32 3017678341, ; 174: Syncfusion.SfMaskedEdit.XForms.Android => 0xb3de1e05 => 40
	i32 3024354802, ; 175: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 84
	i32 3044182254, ; 176: FormsViewGroup => 0xb57288ee => 15
	i32 3048527850, ; 177: Syncfusion.SfNumericTextBox.Android.dll => 0xb5b4d7ea => 42
	i32 3057625584, ; 178: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 96
	i32 3079895995, ; 179: Wplaty_v2.Android => 0xb7937bbb => 0
	i32 3111772706, ; 180: System.Runtime.Serialization => 0xb979e222 => 12
	i32 3204380047, ; 181: System.Data.dll => 0xbefef58f => 120
	i32 3211777861, ; 182: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 78
	i32 3220365878, ; 183: System.Threading => 0xbff2e236 => 129
	i32 3238542748, ; 184: Syncfusion.SfDataGrid.XForms.Android => 0xc1083d9c => 37
	i32 3247949154, ; 185: Mono.Security => 0xc197c562 => 132
	i32 3258312781, ; 186: Xamarin.AndroidX.CardView => 0xc235e84d => 69
	i32 3267021929, ; 187: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 67
	i32 3286872994, ; 188: SQLite-net.dll => 0xc3e9b3a2 => 21
	i32 3299363146, ; 189: System.Text.Encoding => 0xc4a8494a => 7
	i32 3317135071, ; 190: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 77
	i32 3317144872, ; 191: System.Data => 0xc5b79d28 => 120
	i32 3329003366, ; 192: Syncfusion.SfNumericTextBox.XForms.Android.dll => 0xc66c8f66 => 43
	i32 3340431453, ; 193: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 66
	i32 3346324047, ; 194: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 97
	i32 3353484488, ; 195: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 83
	i32 3353544232, ; 196: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 112
	i32 3360279109, ; 197: SQLitePCLRaw.core => 0xc849ca45 => 23
	i32 3362522851, ; 198: Xamarin.AndroidX.Core => 0xc86c06e3 => 75
	i32 3366347497, ; 199: Java.Interop => 0xc8a662e9 => 16
	i32 3374999561, ; 200: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 101
	i32 3395150330, ; 201: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 55
	i32 3404865022, ; 202: System.ServiceModel.Internals => 0xcaf21dfe => 127
	i32 3407215217, ; 203: Xamarin.CommunityToolkit => 0xcb15fa71 => 112
	i32 3429136800, ; 204: System.Xml => 0xcc6479a0 => 57
	i32 3430777524, ; 205: netstandard => 0xcc7d82b4 => 1
	i32 3433996769, ; 206: Syncfusion.Pdf.Portable.dll => 0xccaea1e1 => 32
	i32 3441283291, ; 207: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 80
	i32 3448958507, ; 208: Syncfusion.GridCommon.Portable.dll => 0xcd92ee2b => 30
	i32 3476120550, ; 209: Mono.Android => 0xcf3163e6 => 18
	i32 3486566296, ; 210: System.Transactions => 0xcfd0c798 => 121
	i32 3493954962, ; 211: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 71
	i32 3501239056, ; 212: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 67
	i32 3509114376, ; 213: System.Xml.Linq => 0xd128d608 => 58
	i32 3513050365, ; 214: Syncfusion.SfGridConverter.XForms => 0xd164e4fd => 39
	i32 3536029504, ; 215: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 115
	i32 3544322670, ; 216: Syncfusion.SfProgressBar.XForms.Android => 0xd342126e => 45
	i32 3551972787, ; 217: Syncfusion.Compression.Portable.dll => 0xd3b6cdb3 => 26
	i32 3567349600, ; 218: System.ComponentModel.Composition.dll => 0xd4a16f60 => 125
	i32 3608519521, ; 219: System.Linq.dll => 0xd715a361 => 131
	i32 3612305132, ; 220: Syncfusion.SfDataGrid.XForms.dll => 0xd74f66ec => 38
	i32 3618140916, ; 221: Xamarin.AndroidX.Preference => 0xd7a872f4 => 99
	i32 3627220390, ; 222: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 100
	i32 3632266177, ; 223: Syncfusion.SfComboBox.XForms => 0xd87ffbc1 => 36
	i32 3632359727, ; 224: Xamarin.Forms.Platform => 0xd881692f => 116
	i32 3633644679, ; 225: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 62
	i32 3641597786, ; 226: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 87
	i32 3672681054, ; 227: Mono.Android.dll => 0xdae8aa5e => 18
	i32 3676310014, ; 228: System.Web.Services.dll => 0xdb2009fe => 126
	i32 3678792001, ; 229: Wplaty_v2 => 0xdb45e941 => 59
	i32 3682565725, ; 230: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 68
	i32 3684561358, ; 231: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 71
	i32 3689375977, ; 232: System.Drawing.Common => 0xdbe768e9 => 9
	i32 3693477420, ; 233: Syncfusion.SfNumericTextBox.XForms => 0xdc25fe2c => 44
	i32 3718780102, ; 234: Xamarin.AndroidX.Annotation => 0xdda814c6 => 61
	i32 3724971120, ; 235: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 96
	i32 3754567612, ; 236: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 25
	i32 3758932259, ; 237: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 85
	i32 3786282454, ; 238: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 70
	i32 3818918118, ; 239: CsvHelper.dll => 0xe3a010e6 => 13
	i32 3822443793, ; 240: DocumentFormat.OpenXml => 0xe3d5dd11 => 14
	i32 3822602673, ; 241: Xamarin.AndroidX.Media => 0xe3d849b1 => 94
	i32 3829621856, ; 242: System.Numerics.dll => 0xe4436460 => 53
	i32 3870067495, ; 243: Syncfusion.XlsIO.Portable => 0xe6ac8b27 => 47
	i32 3876362041, ; 244: SQLite-net => 0xe70c9739 => 21
	i32 3885922214, ; 245: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 106
	i32 3896760992, ; 246: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 75
	i32 3920810846, ; 247: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 124
	i32 3921031405, ; 248: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 109
	i32 3931092270, ; 249: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 98
	i32 3945713374, ; 250: System.Data.DataSetExtensions.dll => 0xeb2ecede => 122
	i32 3952357212, ; 251: System.IO.Packaging.dll => 0xeb942f5c => 51
	i32 3953953790, ; 252: System.Text.Encoding.CodePages => 0xebac8bfe => 10
	i32 3955647286, ; 253: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 64
	i32 3965022950, ; 254: Syncfusion.SfComboBox.XForms.Android.dll => 0xec5572e6 => 35
	i32 4025784931, ; 255: System.Memory => 0xeff49a63 => 52
	i32 4051712506, ; 256: Syncfusion.GridCommon.Portable => 0xf18039fa => 30
	i32 4073602200, ; 257: System.Threading.dll => 0xf2ce3c98 => 129
	i32 4090812903, ; 258: Syncfusion.SfNumericTextBox.Android => 0xf3d4d9e7 => 42
	i32 4105002889, ; 259: Mono.Security.dll => 0xf4ad5f89 => 132
	i32 4118017053, ; 260: Syncfusion.SfNumericTextBox.XForms.dll => 0xf573f41d => 44
	i32 4151237749, ; 261: System.Core => 0xf76edc75 => 49
	i32 4182413190, ; 262: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 91
	i32 4221941870, ; 263: Syncfusion.Pdf.Portable => 0xfba5b86e => 32
	i32 4260525087, ; 264: System.Buffers => 0xfdf2741f => 48
	i32 4292120959 ; 265: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 91
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [266 x i32] [
	i32 39, i32 89, i32 119, i32 114, i32 40, i32 43, i32 103, i32 103, ; 0..7
	i32 59, i32 70, i32 104, i32 68, i32 84, i32 17, i32 8, i32 126, ; 8..15
	i32 73, i32 88, i32 82, i32 60, i32 53, i32 86, i32 24, i32 34, ; 16..23
	i32 52, i32 72, i32 113, i32 4, i32 81, i32 19, i32 50, i32 82, ; 24..31
	i32 93, i32 128, i32 121, i32 5, i32 124, i32 77, i32 109, i32 65, ; 32..39
	i32 58, i32 29, i32 28, i32 35, i32 22, i32 123, i32 9, i32 100, ; 40..47
	i32 41, i32 8, i32 13, i32 20, i32 119, i32 86, i32 15, i32 4, ; 48..55
	i32 102, i32 64, i32 116, i32 90, i32 51, i32 50, i32 107, i32 97, ; 56..63
	i32 65, i32 26, i32 108, i32 23, i32 79, i32 131, i32 14, i32 127, ; 64..71
	i32 102, i32 2, i32 94, i32 74, i32 55, i32 5, i32 117, i32 123, ; 72..79
	i32 63, i32 34, i32 27, i32 45, i32 130, i32 6, i32 78, i32 12, ; 80..87
	i32 92, i32 111, i32 76, i32 46, i32 11, i32 130, i32 56, i32 105, ; 88..95
	i32 118, i32 73, i32 47, i32 24, i32 36, i32 3, i32 69, i32 6, ; 96..103
	i32 104, i32 49, i32 81, i32 92, i32 118, i32 98, i32 113, i32 117, ; 104..111
	i32 66, i32 2, i32 95, i32 48, i32 90, i32 87, i32 56, i32 54, ; 112..119
	i32 83, i32 25, i32 115, i32 41, i32 128, i32 37, i32 11, i32 107, ; 120..127
	i32 93, i32 95, i32 85, i32 0, i32 101, i32 61, i32 38, i32 28, ; 128..135
	i32 31, i32 99, i32 7, i32 22, i32 72, i32 1, i32 16, i32 122, ; 136..143
	i32 89, i32 17, i32 108, i32 76, i32 80, i32 88, i32 33, i32 33, ; 144..151
	i32 105, i32 60, i32 63, i32 10, i32 114, i32 110, i32 74, i32 57, ; 152..159
	i32 110, i32 46, i32 106, i32 20, i32 31, i32 27, i32 3, i32 125, ; 160..167
	i32 19, i32 111, i32 54, i32 62, i32 29, i32 79, i32 40, i32 84, ; 168..175
	i32 15, i32 42, i32 96, i32 0, i32 12, i32 120, i32 78, i32 129, ; 176..183
	i32 37, i32 132, i32 69, i32 67, i32 21, i32 7, i32 77, i32 120, ; 184..191
	i32 43, i32 66, i32 97, i32 83, i32 112, i32 23, i32 75, i32 16, ; 192..199
	i32 101, i32 55, i32 127, i32 112, i32 57, i32 1, i32 32, i32 80, ; 200..207
	i32 30, i32 18, i32 121, i32 71, i32 67, i32 58, i32 39, i32 115, ; 208..215
	i32 45, i32 26, i32 125, i32 131, i32 38, i32 99, i32 100, i32 36, ; 216..223
	i32 116, i32 62, i32 87, i32 18, i32 126, i32 59, i32 68, i32 71, ; 224..231
	i32 9, i32 44, i32 61, i32 96, i32 25, i32 85, i32 70, i32 13, ; 232..239
	i32 14, i32 94, i32 53, i32 47, i32 21, i32 106, i32 75, i32 124, ; 240..247
	i32 109, i32 98, i32 122, i32 51, i32 10, i32 64, i32 35, i32 52, ; 248..255
	i32 30, i32 129, i32 42, i32 132, i32 44, i32 49, i32 91, i32 32, ; 256..263
	i32 48, i32 91 ; 264..265
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

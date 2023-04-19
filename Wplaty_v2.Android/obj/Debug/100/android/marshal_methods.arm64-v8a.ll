; ModuleID = 'obj\Debug\100\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\100\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [264 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 79
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 18
	i64 210515253464952879, ; 2: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 69
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 101
	i64 295915112840604065, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 102
	i64 634308326490598313, ; 5: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 88
	i64 702024105029695270, ; 6: System.Drawing.Common => 0x9be17343c0e7726 => 9
	i64 720058930071658100, ; 7: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 82
	i64 870603111519317375, ; 8: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 23
	i64 872800313462103108, ; 9: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 78
	i64 940822596282819491, ; 10: System.Transactions => 0xd0e792aa81923a3 => 120
	i64 996343623809489702, ; 11: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 115
	i64 1000557547492888992, ; 12: Mono.Security.dll => 0xde2b1c9cba651a0 => 131
	i64 1120440138749646132, ; 13: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 117
	i64 1301485588176585670, ; 14: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 22
	i64 1315114680217950157, ; 15: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 64
	i64 1425944114962822056, ; 16: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 12
	i64 1435064484980070193, ; 17: Syncfusion.SfComboBox.XForms.dll => 0x13ea5f8bb9041731 => 35
	i64 1518315023656898250, ; 18: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 24
	i64 1624659445732251991, ; 19: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 62
	i64 1628611045998245443, ; 20: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 90
	i64 1636321030536304333, ; 21: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 83
	i64 1743969030606105336, ; 22: System.Memory.dll => 0x1833d297e88f2af8 => 51
	i64 1795316252682057001, ; 23: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 63
	i64 1836611346387731153, ; 24: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 101
	i64 1875917498431009007, ; 25: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 60
	i64 1981742497975770890, ; 26: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 89
	i64 1986553961460820075, ; 27: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 111
	i64 2076847052340733488, ; 28: Syncfusion.Core.XForms => 0x1cd27163f7962630 => 27
	i64 2126915263223078201, ; 29: Syncfusion.GridCommon.Portable => 0x1d845229bbc49d39 => 29
	i64 2136356949452311481, ; 30: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 94
	i64 2165725771938924357, ; 31: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 67
	i64 2207662933261301575, ; 32: DocumentFormat.OpenXml => 0x1ea331bdb8d63747 => 14
	i64 2254786158495914142, ; 33: Syncfusion.SfProgressBar.XForms.Android.dll => 0x1f4a9c10959dd89e => 44
	i64 2262844636196693701, ; 34: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 78
	i64 2284400282711631002, ; 35: System.Web.Services => 0x1fb3d1f42fd4249a => 125
	i64 2329709569556905518, ; 36: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 86
	i64 2337758774805907496, ; 37: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 54
	i64 2469392061734276978, ; 38: Syncfusion.Core.XForms.Android.dll => 0x22450aff2ad74f72 => 26
	i64 2470498323731680442, ; 39: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 73
	i64 2479423007379663237, ; 40: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 106
	i64 2497223385847772520, ; 41: System.Runtime => 0x22a7eb7046413568 => 55
	i64 2547086958574651984, ; 42: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 59
	i64 2592350477072141967, ; 43: System.Xml.dll => 0x23f9e10627330e8f => 56
	i64 2624866290265602282, ; 44: mscorlib.dll => 0x246d65fbde2db8ea => 19
	i64 2694427813909235223, ; 45: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 98
	i64 2783046991838674048, ; 46: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 54
	i64 2960931600190307745, ; 47: Xamarin.Forms.Core => 0x2917579a49927da1 => 113
	i64 3017704767998173186, ; 48: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 117
	i64 3289520064315143713, ; 49: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 85
	i64 3303437397778967116, ; 50: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 61
	i64 3311221304742556517, ; 51: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 53
	i64 3493805808809882663, ; 52: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 104
	i64 3522470458906976663, ; 53: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 103
	i64 3531994851595924923, ; 54: System.Numerics => 0x31042a9aade235bb => 52
	i64 3571415421602489686, ; 55: System.Runtime.dll => 0x319037675df7e556 => 55
	i64 3716579019761409177, ; 56: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 57: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 100
	i64 3730887114094830029, ; 58: Syncfusion.GridCommon.Portable.dll => 0x33c6c6102cb461cd => 29
	i64 3772598417116884899, ; 59: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 79
	i64 3908336291285777176, ; 60: Syncfusion.SfNumericTextBox.XForms.Android.dll => 0x363d332650db3b18 => 42
	i64 3966267475168208030, ; 61: System.Memory => 0x370b03412596249e => 51
	i64 4337444564132831293, ; 62: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 21
	i64 4525561845656915374, ; 63: System.ServiceModel.Internals => 0x3ece06856b710dae => 126
	i64 4636684751163556186, ; 64: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 108
	i64 4782108999019072045, ; 65: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 66
	i64 4794310189461587505, ; 66: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 59
	i64 4795410492532947900, ; 67: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 103
	i64 5081566143765835342, ; 68: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 2
	i64 5099468265966638712, ; 69: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 2
	i64 5142919913060024034, ; 70: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 114
	i64 5163087481829776912, ; 71: Wplaty_v2.dll => 0x47a6f8b5a2bade10 => 58
	i64 5203618020066742981, ; 72: Xamarin.Essentials => 0x4836f704f0e652c5 => 112
	i64 5205316157927637098, ; 73: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 92
	i64 5348796042099802469, ; 74: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 93
	i64 5376510917114486089, ; 75: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 106
	i64 5408338804355907810, ; 76: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 105
	i64 5451019430259338467, ; 77: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 72
	i64 5507995362134886206, ; 78: System.Core.dll => 0x4c705499688c873e => 48
	i64 5540976586714296940, ; 79: Syncfusion.SfNumericTextBox.Android.dll => 0x4ce580d927dcb26c => 41
	i64 5679624767254653100, ; 80: Syncfusion.SfProgressBar.XForms => 0x4ed214a245b968ac => 45
	i64 5692067934154308417, ; 81: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 110
	i64 5757522595884336624, ; 82: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 70
	i64 5814345312393086621, ; 83: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 98
	i64 5896680224035167651, ; 84: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 87
	i64 6085203216496545422, ; 85: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 115
	i64 6086316965293125504, ; 86: FormsViewGroup.dll => 0x5476f10882baef80 => 15
	i64 6183170893902868313, ; 87: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 21
	i64 6319713645133255417, ; 88: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 88
	i64 6401687960814735282, ; 89: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 86
	i64 6504860066809920875, ; 90: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 67
	i64 6548213210057960872, ; 91: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 76
	i64 6591024623626361694, ; 92: System.Web.Services.dll => 0x5b7805f9751a1b5e => 125
	i64 6617685658146568858, ; 93: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 10
	i64 6659513131007730089, ; 94: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 82
	i64 6711679492026985136, ; 95: Syncfusion.SfNumericTextBox.XForms.dll => 0x5d24acf0208aeab0 => 43
	i64 6876862101832370452, ; 96: System.Xml.Linq => 0x5f6f85a57d108914 => 57
	i64 6894844156784520562, ; 97: System.Numerics.Vectors => 0x5faf683aead1ad72 => 53
	i64 7026608356547306326, ; 98: Syncfusion.Core.XForms.dll => 0x618387125bcb2356 => 27
	i64 7036436454368433159, ; 99: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 84
	i64 7103753931438454322, ; 100: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 81
	i64 7270811800166795866, ; 101: System.Linq => 0x64e71ccf51a90a5a => 130
	i64 7270951509819434961, ; 102: Syncfusion.SfAutoComplete.XForms => 0x64e79be001e0a7d1 => 33
	i64 7338192458477945005, ; 103: System.Reflection => 0x65d67f295d0740ad => 3
	i64 7488575175965059935, ; 104: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 57
	i64 7489048572193775167, ; 105: System.ObjectModel => 0x67ee71ff6b419e3f => 127
	i64 7566872048948821773, ; 106: Syncfusion.SfDataGrid.XForms => 0x6902ee099a6d3f0d => 37
	i64 7635363394907363464, ; 107: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 113
	i64 7637365915383206639, ; 108: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 112
	i64 7654504624184590948, ; 109: System.Net.Http => 0x6a3a4366801b8264 => 11
	i64 7735176074855944702, ; 110: Microsoft.CSharp => 0x6b58dda848e391fe => 17
	i64 7820441508502274321, ; 111: System.Data => 0x6c87ca1e14ff8111 => 119
	i64 7836164640616011524, ; 112: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 62
	i64 7956423435673659877, ; 113: Syncfusion.SfDataGrid.XForms.Android => 0x6e6ae4f5b5ebe9e5 => 36
	i64 8044118961405839122, ; 114: System.ComponentModel.Composition => 0x6fa2739369944712 => 124
	i64 8064050204834738623, ; 115: System.Collections.dll => 0x6fe942efa61731bf => 4
	i64 8083054321397151520, ; 116: Syncfusion.SfDataGrid.XForms.Android.dll => 0x702cc71457103720 => 36
	i64 8083354569033831015, ; 117: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 85
	i64 8103644804370223335, ; 118: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 121
	i64 8113615946733131500, ; 119: System.Reflection.Extensions => 0x70995ab73cf916ec => 6
	i64 8167236081217502503, ; 120: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 16
	i64 8185542183669246576, ; 121: System.Collections => 0x7198e33f4794aa70 => 4
	i64 8290740647658429042, ; 122: System.Runtime.Extensions => 0x730ea0b15c929a72 => 5
	i64 8398329775253868912, ; 123: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 71
	i64 8400357532724379117, ; 124: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 97
	i64 8601935802264776013, ; 125: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 105
	i64 8626175481042262068, ; 126: Java.Interop => 0x77b654e585b55834 => 16
	i64 8638972117149407195, ; 127: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 17
	i64 8639588376636138208, ; 128: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 96
	i64 8684531736582871431, ; 129: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 123
	i64 8963482838182047088, ; 130: Syncfusion.SfProgressBar.XForms.dll => 0x7c64b0269826ad70 => 45
	i64 9293890220217345133, ; 131: Syncfusion.SfAutoComplete.XForms.Android.dll => 0x80fa87ea0588246d => 32
	i64 9312692141327339315, ; 132: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 110
	i64 9324707631942237306, ; 133: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 63
	i64 9418564226550032778, ; 134: Syncfusion.SfNumericTextBox.XForms.Android => 0x82b5764329b7698a => 42
	i64 9659729154652888475, ; 135: System.Text.RegularExpressions => 0x860e407c9991dd9b => 129
	i64 9662334977499516867, ; 136: System.Numerics.dll => 0x8617827802b0cfc3 => 52
	i64 9678050649315576968, ; 137: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 73
	i64 9711637524876806384, ; 138: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 93
	i64 9754517241374622406, ; 139: Syncfusion.SfAutoComplete.XForms.Android => 0x875f01bfd78ec2c6 => 32
	i64 9808709177481450983, ; 140: Mono.Android.dll => 0x881f890734e555e7 => 18
	i64 9825649861376906464, ; 141: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 70
	i64 9834056768316610435, ; 142: System.Transactions.dll => 0x8879968718899783 => 120
	i64 9998632235833408227, ; 143: Mono.Security => 0x8ac2470b209ebae3 => 131
	i64 10038780035334861115, ; 144: System.Net.Http.dll => 0x8b50e941206af13b => 11
	i64 10229024438826829339, ; 145: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 76
	i64 10360651442923773544, ; 146: System.Text.Encoding => 0x8fc86d98211c1e68 => 7
	i64 10376576884623852283, ; 147: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 104
	i64 10430153318873392755, ; 148: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 74
	i64 10438231987199687841, ; 149: Syncfusion.XlsIO.Portable.dll => 0x90dc0cb030283ca1 => 46
	i64 10566960649245365243, ; 150: System.Globalization.dll => 0x92a562b96dcd13fb => 8
	i64 10650478070646097812, ; 151: System.IO.Packaging => 0x93ce196068f2c794 => 50
	i64 10714184849103829812, ; 152: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 5
	i64 10847732767863316357, ; 153: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 64
	i64 11023048688141570732, ; 154: System.Core => 0x98f9bc61168392ac => 48
	i64 11034181033432536911, ; 155: Syncfusion.SfNumericTextBox.XForms => 0x992149303519574f => 43
	i64 11037814507248023548, ; 156: System.Xml => 0x992e31d0412bf7fc => 56
	i64 11122995063473561350, ; 157: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 111
	i64 11162124722117608902, ; 158: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 109
	i64 11340910727871153756, ; 159: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 75
	i64 11378999285100958087, ; 160: Wplaty_v2.Android.dll => 0x9dea538fafddd187 => 0
	i64 11392833485892708388, ; 161: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 99
	i64 11481714388108425262, ; 162: Syncfusion.SfComboBox.XForms => 0x9f573e673bb1b82e => 35
	i64 11529969570048099689, ; 163: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 109
	i64 11578238080964724296, ; 164: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 84
	i64 11580057168383206117, ; 165: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 60
	i64 11597940890313164233, ; 166: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11606334278361545453, ; 167: Syncfusion.SfMaskedEdit.XForms.Android => 0xa111fb887e2dfaed => 39
	i64 11672361001936329215, ; 168: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 81
	i64 11739066727115742305, ; 169: SQLite-net.dll => 0xa2e98afdf8575c61 => 20
	i64 11806260347154423189, ; 170: SQLite-net => 0xa3d8433bc5eb5d95 => 20
	i64 11869220915266023700, ; 171: Syncfusion.SfAutoComplete.XForms.dll => 0xa4b7f1895f117114 => 33
	i64 12007499501337384656, ; 172: Syncfusion.XlsIO.Portable => 0xa6a3352d91e516d0 => 46
	i64 12036415867504728778, ; 173: CsvHelper => 0xa709f075b77e9aca => 13
	i64 12102847907131387746, ; 174: System.Buffers => 0xa7f5f40c43256f62 => 47
	i64 12123043025855404482, ; 175: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 6
	i64 12137774235383566651, ; 176: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 107
	i64 12212747205940921632, ; 177: Syncfusion.SfProgressBar.XForms.Android => 0xa97c64e0bdc0c520 => 44
	i64 12279246230491828964, ; 178: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 24
	i64 12312508881223092658, ; 179: Syncfusion.SfMaskedEdit.XForms.Android.dll => 0xaaded197cf2509b2 => 39
	i64 12451044538927396471, ; 180: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 80
	i64 12466513435562512481, ; 181: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 91
	i64 12487638416075308985, ; 182: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 77
	i64 12538491095302438457, ; 183: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 68
	i64 12550732019250633519, ; 184: System.IO.Compression => 0xae2d28465e8e1b2f => 122
	i64 12700543734426720211, ; 185: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 69
	i64 12963446364377008305, ; 186: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 9
	i64 13058651076603825364, ; 187: Syncfusion.Data.Portable.dll => 0xb539a5f76abe4cd4 => 28
	i64 13204127855005737413, ; 188: Wplaty_v2.Android => 0xb73e7c535e7521c5 => 0
	i64 13297997883559027856, ; 189: Syncfusion.Compression.Portable => 0xb88bfa9e896ea490 => 25
	i64 13370592475155966277, ; 190: System.Runtime.Serialization => 0xb98de304062ea945 => 12
	i64 13401370062847626945, ; 191: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 107
	i64 13404347523447273790, ; 192: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 71
	i64 13454009404024712428, ; 193: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 118
	i64 13491513212026656886, ; 194: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 65
	i64 13572454107664307259, ; 195: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 100
	i64 13622732128915678507, ; 196: Syncfusion.Core.XForms.Android => 0xbd0daab1e651e52b => 26
	i64 13633379896196278604, ; 197: Wplaty_v2 => 0xbd337ec868bb294c => 58
	i64 13647433987885684830, ; 198: Syncfusion.SfNumericTextBox.Android => 0xbd656ce79f84d85e => 41
	i64 13647894001087880694, ; 199: System.Data.dll => 0xbd670f48cb071df6 => 119
	i64 13902543935539791585, ; 200: Syncfusion.SfMaskedEdit.XForms => 0xc0efc20cf01c46e1 => 40
	i64 13959074834287824816, ; 201: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 80
	i64 13967638549803255703, ; 202: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 114
	i64 13970307180132182141, ; 203: Syncfusion.Licensing => 0xc1e0805ccade287d => 30
	i64 14061024831517255851, ; 204: Syncfusion.SfComboBox.XForms.Android => 0xc322cb95f48868ab => 34
	i64 14124974489674258913, ; 205: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 68
	i64 14125464355221830302, ; 206: System.Threading.dll => 0xc407bafdbc707a9e => 128
	i64 14148919944076435199, ; 207: DocumentFormat.OpenXml.dll => 0xc45b0fb9961d9eff => 14
	i64 14172845254133543601, ; 208: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 94
	i64 14261073672896646636, ; 209: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 99
	i64 14327695147300244862, ; 210: System.Reflection.dll => 0xc6d632d338eb4d7e => 3
	i64 14336319490208926827, ; 211: Syncfusion.SfGridConverter.XForms.dll => 0xc6f4d69e88698c6b => 38
	i64 14486659737292545672, ; 212: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 87
	i64 14496551307514333127, ; 213: Syncfusion.SfGridConverter.XForms => 0xc92e189bb09dc7c7 => 38
	i64 14538127318538747197, ; 214: Syncfusion.Licensing.dll => 0xc9c1cdc518e77d3d => 30
	i64 14644440854989303794, ; 215: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 92
	i64 14748851336349168659, ; 216: Syncfusion.Pdf.Portable.dll => 0xccae7225cc233413 => 31
	i64 14792063746108907174, ; 217: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 118
	i64 14852515768018889994, ; 218: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 75
	i64 14935719434541007538, ; 219: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 10
	i64 14987728460634540364, ; 220: System.IO.Compression.dll => 0xcfff1ba06622494c => 122
	i64 14988210264188246988, ; 221: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 77
	i64 15076659072870671916, ; 222: System.ObjectModel.dll => 0xd13b0d8c1620662c => 127
	i64 15133485256822086103, ; 223: System.Linq.dll => 0xd204f0a9127dd9d7 => 130
	i64 15241747024500257992, ; 224: Syncfusion.SfMaskedEdit.XForms.dll => 0xd385902a1fb474c8 => 40
	i64 15370334346939861994, ; 225: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 74
	i64 15423352120420908645, ; 226: Syncfusion.SfComboBox.XForms.Android.dll => 0xd60ac1097f74be65 => 34
	i64 15526743539506359484, ; 227: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 7
	i64 15582737692548360875, ; 228: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 90
	i64 15609085926864131306, ; 229: System.dll => 0xd89e9cf3334914ea => 49
	i64 15777549416145007739, ; 230: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 102
	i64 15810740023422282496, ; 231: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 116
	i64 16154507427712707110, ; 232: System => 0xe03056ea4e39aa26 => 49
	i64 16527749710595459278, ; 233: Syncfusion.Compression.Portable.dll => 0xe55e5ccb449b88ce => 25
	i64 16565028646146589191, ; 234: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 124
	i64 16621146507174665210, ; 235: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 72
	i64 16677317093839702854, ; 236: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 97
	i64 16755018182064898362, ; 237: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 22
	i64 16822611501064131242, ; 238: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 121
	i64 16833383113903931215, ; 239: mscorlib => 0xe99c30c1484d7f4f => 19
	i64 16848182392821183571, ; 240: CsvHelper.dll => 0xe9d0c49eeb18f453 => 13
	i64 16890310621557459193, ; 241: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 129
	i64 16955506688107500054, ; 242: Syncfusion.Pdf.Portable => 0xeb4e0f7fab685216 => 31
	i64 17024911836938395553, ; 243: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 61
	i64 17031351772568316411, ; 244: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 95
	i64 17037200463775726619, ; 245: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 83
	i64 17544493274320527064, ; 246: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 66
	i64 17627500474728259406, ; 247: System.Globalization => 0xf4a176498a351f4e => 8
	i64 17704177640604968747, ; 248: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 91
	i64 17710060891934109755, ; 249: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 89
	i64 17832140366245679051, ; 250: Syncfusion.Data.Portable => 0xf7787d2f32fa4fcb => 28
	i64 17838668724098252521, ; 251: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 47
	i64 17882897186074144999, ; 252: FormsViewGroup => 0xf82cd03e3ac830e7 => 15
	i64 17892495832318972303, ; 253: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 116
	i64 17928294245072900555, ; 254: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 123
	i64 18025913125965088385, ; 255: System.Threading => 0xfa28e87b91334681 => 128
	i64 18116111925905154859, ; 256: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 65
	i64 18121036031235206392, ; 257: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 95
	i64 18129453464017766560, ; 258: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 126
	i64 18219918163864392437, ; 259: Syncfusion.SfDataGrid.XForms.dll => 0xfcda270969d312f5 => 37
	i64 18284618658670613420, ; 260: System.IO.Packaging.dll => 0xfdc003cb438a93ac => 50
	i64 18305135509493619199, ; 261: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 96
	i64 18370042311372477656, ; 262: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 23
	i64 18380184030268848184 ; 263: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 108
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [264 x i32] [
	i32 79, i32 18, i32 69, i32 101, i32 102, i32 88, i32 9, i32 82, ; 0..7
	i32 23, i32 78, i32 120, i32 115, i32 131, i32 117, i32 22, i32 64, ; 8..15
	i32 12, i32 35, i32 24, i32 62, i32 90, i32 83, i32 51, i32 63, ; 16..23
	i32 101, i32 60, i32 89, i32 111, i32 27, i32 29, i32 94, i32 67, ; 24..31
	i32 14, i32 44, i32 78, i32 125, i32 86, i32 54, i32 26, i32 73, ; 32..39
	i32 106, i32 55, i32 59, i32 56, i32 19, i32 98, i32 54, i32 113, ; 40..47
	i32 117, i32 85, i32 61, i32 53, i32 104, i32 103, i32 52, i32 55, ; 48..55
	i32 1, i32 100, i32 29, i32 79, i32 42, i32 51, i32 21, i32 126, ; 56..63
	i32 108, i32 66, i32 59, i32 103, i32 2, i32 2, i32 114, i32 58, ; 64..71
	i32 112, i32 92, i32 93, i32 106, i32 105, i32 72, i32 48, i32 41, ; 72..79
	i32 45, i32 110, i32 70, i32 98, i32 87, i32 115, i32 15, i32 21, ; 80..87
	i32 88, i32 86, i32 67, i32 76, i32 125, i32 10, i32 82, i32 43, ; 88..95
	i32 57, i32 53, i32 27, i32 84, i32 81, i32 130, i32 33, i32 3, ; 96..103
	i32 57, i32 127, i32 37, i32 113, i32 112, i32 11, i32 17, i32 119, ; 104..111
	i32 62, i32 36, i32 124, i32 4, i32 36, i32 85, i32 121, i32 6, ; 112..119
	i32 16, i32 4, i32 5, i32 71, i32 97, i32 105, i32 16, i32 17, ; 120..127
	i32 96, i32 123, i32 45, i32 32, i32 110, i32 63, i32 42, i32 129, ; 128..135
	i32 52, i32 73, i32 93, i32 32, i32 18, i32 70, i32 120, i32 131, ; 136..143
	i32 11, i32 76, i32 7, i32 104, i32 74, i32 46, i32 8, i32 50, ; 144..151
	i32 5, i32 64, i32 48, i32 43, i32 56, i32 111, i32 109, i32 75, ; 152..159
	i32 0, i32 99, i32 35, i32 109, i32 84, i32 60, i32 1, i32 39, ; 160..167
	i32 81, i32 20, i32 20, i32 33, i32 46, i32 13, i32 47, i32 6, ; 168..175
	i32 107, i32 44, i32 24, i32 39, i32 80, i32 91, i32 77, i32 68, ; 176..183
	i32 122, i32 69, i32 9, i32 28, i32 0, i32 25, i32 12, i32 107, ; 184..191
	i32 71, i32 118, i32 65, i32 100, i32 26, i32 58, i32 41, i32 119, ; 192..199
	i32 40, i32 80, i32 114, i32 30, i32 34, i32 68, i32 128, i32 14, ; 200..207
	i32 94, i32 99, i32 3, i32 38, i32 87, i32 38, i32 30, i32 92, ; 208..215
	i32 31, i32 118, i32 75, i32 10, i32 122, i32 77, i32 127, i32 130, ; 216..223
	i32 40, i32 74, i32 34, i32 7, i32 90, i32 49, i32 102, i32 116, ; 224..231
	i32 49, i32 25, i32 124, i32 72, i32 97, i32 22, i32 121, i32 19, ; 232..239
	i32 13, i32 129, i32 31, i32 61, i32 95, i32 83, i32 66, i32 8, ; 240..247
	i32 91, i32 89, i32 28, i32 47, i32 15, i32 116, i32 123, i32 128, ; 248..255
	i32 65, i32 95, i32 126, i32 37, i32 50, i32 96, i32 23, i32 108 ; 264..263
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}

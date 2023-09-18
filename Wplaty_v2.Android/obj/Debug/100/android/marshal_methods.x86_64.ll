; ModuleID = 'obj\Debug\100\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\100\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [266 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 80
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 18
	i64 210515253464952879, ; 2: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 70
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 102
	i64 263803244706540312, ; 4: Rg.Plugins.Popup.dll => 0x3a937a743542b18 => 20
	i64 295915112840604065, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 103
	i64 634308326490598313, ; 6: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 89
	i64 702024105029695270, ; 7: System.Drawing.Common => 0x9be17343c0e7726 => 9
	i64 720058930071658100, ; 8: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 83
	i64 870603111519317375, ; 9: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 24
	i64 872800313462103108, ; 10: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 79
	i64 940822596282819491, ; 11: System.Transactions => 0xd0e792aa81923a3 => 121
	i64 996343623809489702, ; 12: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 116
	i64 1000557547492888992, ; 13: Mono.Security.dll => 0xde2b1c9cba651a0 => 132
	i64 1120440138749646132, ; 14: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 118
	i64 1301485588176585670, ; 15: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 23
	i64 1315114680217950157, ; 16: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 65
	i64 1425944114962822056, ; 17: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 12
	i64 1435064484980070193, ; 18: Syncfusion.SfComboBox.XForms.dll => 0x13ea5f8bb9041731 => 36
	i64 1518315023656898250, ; 19: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 25
	i64 1624659445732251991, ; 20: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 63
	i64 1628611045998245443, ; 21: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 91
	i64 1636321030536304333, ; 22: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 84
	i64 1743969030606105336, ; 23: System.Memory.dll => 0x1833d297e88f2af8 => 52
	i64 1795316252682057001, ; 24: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 64
	i64 1836611346387731153, ; 25: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 102
	i64 1875917498431009007, ; 26: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 61
	i64 1981742497975770890, ; 27: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 90
	i64 1986553961460820075, ; 28: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 112
	i64 2076847052340733488, ; 29: Syncfusion.Core.XForms => 0x1cd27163f7962630 => 28
	i64 2126915263223078201, ; 30: Syncfusion.GridCommon.Portable => 0x1d845229bbc49d39 => 30
	i64 2136356949452311481, ; 31: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 95
	i64 2165725771938924357, ; 32: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 68
	i64 2207662933261301575, ; 33: DocumentFormat.OpenXml => 0x1ea331bdb8d63747 => 14
	i64 2254786158495914142, ; 34: Syncfusion.SfProgressBar.XForms.Android.dll => 0x1f4a9c10959dd89e => 45
	i64 2262844636196693701, ; 35: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 79
	i64 2284400282711631002, ; 36: System.Web.Services => 0x1fb3d1f42fd4249a => 126
	i64 2329709569556905518, ; 37: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 87
	i64 2337758774805907496, ; 38: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 55
	i64 2469392061734276978, ; 39: Syncfusion.Core.XForms.Android.dll => 0x22450aff2ad74f72 => 27
	i64 2470498323731680442, ; 40: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 74
	i64 2479423007379663237, ; 41: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 107
	i64 2497223385847772520, ; 42: System.Runtime => 0x22a7eb7046413568 => 56
	i64 2547086958574651984, ; 43: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 60
	i64 2592350477072141967, ; 44: System.Xml.dll => 0x23f9e10627330e8f => 57
	i64 2624866290265602282, ; 45: mscorlib.dll => 0x246d65fbde2db8ea => 19
	i64 2694427813909235223, ; 46: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 99
	i64 2783046991838674048, ; 47: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 55
	i64 2960931600190307745, ; 48: Xamarin.Forms.Core => 0x2917579a49927da1 => 114
	i64 3017704767998173186, ; 49: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 118
	i64 3289520064315143713, ; 50: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 86
	i64 3303437397778967116, ; 51: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 62
	i64 3311221304742556517, ; 52: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 54
	i64 3493805808809882663, ; 53: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 105
	i64 3522470458906976663, ; 54: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 104
	i64 3531994851595924923, ; 55: System.Numerics => 0x31042a9aade235bb => 53
	i64 3571415421602489686, ; 56: System.Runtime.dll => 0x319037675df7e556 => 56
	i64 3716579019761409177, ; 57: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 58: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 101
	i64 3730887114094830029, ; 59: Syncfusion.GridCommon.Portable.dll => 0x33c6c6102cb461cd => 30
	i64 3772598417116884899, ; 60: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 80
	i64 3908336291285777176, ; 61: Syncfusion.SfNumericTextBox.XForms.Android.dll => 0x363d332650db3b18 => 43
	i64 3966267475168208030, ; 62: System.Memory => 0x370b03412596249e => 52
	i64 4337444564132831293, ; 63: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 22
	i64 4525561845656915374, ; 64: System.ServiceModel.Internals => 0x3ece06856b710dae => 127
	i64 4636684751163556186, ; 65: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 109
	i64 4782108999019072045, ; 66: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 67
	i64 4794310189461587505, ; 67: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 60
	i64 4795410492532947900, ; 68: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 104
	i64 5081566143765835342, ; 69: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 2
	i64 5099468265966638712, ; 70: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 2
	i64 5142919913060024034, ; 71: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 115
	i64 5163087481829776912, ; 72: Wplaty_v2.dll => 0x47a6f8b5a2bade10 => 59
	i64 5203618020066742981, ; 73: Xamarin.Essentials => 0x4836f704f0e652c5 => 113
	i64 5205316157927637098, ; 74: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 93
	i64 5348796042099802469, ; 75: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 94
	i64 5376510917114486089, ; 76: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 107
	i64 5408338804355907810, ; 77: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 106
	i64 5451019430259338467, ; 78: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 73
	i64 5507995362134886206, ; 79: System.Core.dll => 0x4c705499688c873e => 49
	i64 5540976586714296940, ; 80: Syncfusion.SfNumericTextBox.Android.dll => 0x4ce580d927dcb26c => 42
	i64 5679624767254653100, ; 81: Syncfusion.SfProgressBar.XForms => 0x4ed214a245b968ac => 46
	i64 5692067934154308417, ; 82: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 111
	i64 5757522595884336624, ; 83: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 71
	i64 5814345312393086621, ; 84: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 99
	i64 5896680224035167651, ; 85: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 88
	i64 6085203216496545422, ; 86: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 116
	i64 6086316965293125504, ; 87: FormsViewGroup.dll => 0x5476f10882baef80 => 15
	i64 6183170893902868313, ; 88: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 22
	i64 6319713645133255417, ; 89: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 89
	i64 6401687960814735282, ; 90: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 87
	i64 6504860066809920875, ; 91: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 68
	i64 6548213210057960872, ; 92: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 77
	i64 6591024623626361694, ; 93: System.Web.Services.dll => 0x5b7805f9751a1b5e => 126
	i64 6617685658146568858, ; 94: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 10
	i64 6659513131007730089, ; 95: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 83
	i64 6711679492026985136, ; 96: Syncfusion.SfNumericTextBox.XForms.dll => 0x5d24acf0208aeab0 => 44
	i64 6876862101832370452, ; 97: System.Xml.Linq => 0x5f6f85a57d108914 => 58
	i64 6894844156784520562, ; 98: System.Numerics.Vectors => 0x5faf683aead1ad72 => 54
	i64 7026608356547306326, ; 99: Syncfusion.Core.XForms.dll => 0x618387125bcb2356 => 28
	i64 7036436454368433159, ; 100: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 85
	i64 7103753931438454322, ; 101: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 82
	i64 7270811800166795866, ; 102: System.Linq => 0x64e71ccf51a90a5a => 131
	i64 7270951509819434961, ; 103: Syncfusion.SfAutoComplete.XForms => 0x64e79be001e0a7d1 => 34
	i64 7338192458477945005, ; 104: System.Reflection => 0x65d67f295d0740ad => 3
	i64 7488575175965059935, ; 105: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 58
	i64 7489048572193775167, ; 106: System.ObjectModel => 0x67ee71ff6b419e3f => 128
	i64 7566872048948821773, ; 107: Syncfusion.SfDataGrid.XForms => 0x6902ee099a6d3f0d => 38
	i64 7635363394907363464, ; 108: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 114
	i64 7637365915383206639, ; 109: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 113
	i64 7654504624184590948, ; 110: System.Net.Http => 0x6a3a4366801b8264 => 11
	i64 7735176074855944702, ; 111: Microsoft.CSharp => 0x6b58dda848e391fe => 17
	i64 7820441508502274321, ; 112: System.Data => 0x6c87ca1e14ff8111 => 120
	i64 7836164640616011524, ; 113: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 63
	i64 7956423435673659877, ; 114: Syncfusion.SfDataGrid.XForms.Android => 0x6e6ae4f5b5ebe9e5 => 37
	i64 8044118961405839122, ; 115: System.ComponentModel.Composition => 0x6fa2739369944712 => 125
	i64 8064050204834738623, ; 116: System.Collections.dll => 0x6fe942efa61731bf => 4
	i64 8083054321397151520, ; 117: Syncfusion.SfDataGrid.XForms.Android.dll => 0x702cc71457103720 => 37
	i64 8083354569033831015, ; 118: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 86
	i64 8103644804370223335, ; 119: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 122
	i64 8113615946733131500, ; 120: System.Reflection.Extensions => 0x70995ab73cf916ec => 6
	i64 8167236081217502503, ; 121: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 16
	i64 8185542183669246576, ; 122: System.Collections => 0x7198e33f4794aa70 => 4
	i64 8290740647658429042, ; 123: System.Runtime.Extensions => 0x730ea0b15c929a72 => 5
	i64 8398329775253868912, ; 124: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 72
	i64 8400357532724379117, ; 125: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 98
	i64 8601935802264776013, ; 126: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 106
	i64 8626175481042262068, ; 127: Java.Interop => 0x77b654e585b55834 => 16
	i64 8638972117149407195, ; 128: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 17
	i64 8639588376636138208, ; 129: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 97
	i64 8684531736582871431, ; 130: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 124
	i64 8963482838182047088, ; 131: Syncfusion.SfProgressBar.XForms.dll => 0x7c64b0269826ad70 => 46
	i64 9293890220217345133, ; 132: Syncfusion.SfAutoComplete.XForms.Android.dll => 0x80fa87ea0588246d => 33
	i64 9312692141327339315, ; 133: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 111
	i64 9324707631942237306, ; 134: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 64
	i64 9418564226550032778, ; 135: Syncfusion.SfNumericTextBox.XForms.Android => 0x82b5764329b7698a => 43
	i64 9659729154652888475, ; 136: System.Text.RegularExpressions => 0x860e407c9991dd9b => 130
	i64 9662334977499516867, ; 137: System.Numerics.dll => 0x8617827802b0cfc3 => 53
	i64 9678050649315576968, ; 138: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 74
	i64 9711637524876806384, ; 139: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 94
	i64 9754517241374622406, ; 140: Syncfusion.SfAutoComplete.XForms.Android => 0x875f01bfd78ec2c6 => 33
	i64 9808709177481450983, ; 141: Mono.Android.dll => 0x881f890734e555e7 => 18
	i64 9825649861376906464, ; 142: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 71
	i64 9834056768316610435, ; 143: System.Transactions.dll => 0x8879968718899783 => 121
	i64 9998632235833408227, ; 144: Mono.Security => 0x8ac2470b209ebae3 => 132
	i64 10038780035334861115, ; 145: System.Net.Http.dll => 0x8b50e941206af13b => 11
	i64 10229024438826829339, ; 146: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 77
	i64 10360651442923773544, ; 147: System.Text.Encoding => 0x8fc86d98211c1e68 => 7
	i64 10376576884623852283, ; 148: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 105
	i64 10430153318873392755, ; 149: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 75
	i64 10438231987199687841, ; 150: Syncfusion.XlsIO.Portable.dll => 0x90dc0cb030283ca1 => 47
	i64 10566960649245365243, ; 151: System.Globalization.dll => 0x92a562b96dcd13fb => 8
	i64 10650478070646097812, ; 152: System.IO.Packaging => 0x93ce196068f2c794 => 51
	i64 10714184849103829812, ; 153: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 5
	i64 10847732767863316357, ; 154: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 65
	i64 11023048688141570732, ; 155: System.Core => 0x98f9bc61168392ac => 49
	i64 11034181033432536911, ; 156: Syncfusion.SfNumericTextBox.XForms => 0x992149303519574f => 44
	i64 11037814507248023548, ; 157: System.Xml => 0x992e31d0412bf7fc => 57
	i64 11122995063473561350, ; 158: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 112
	i64 11162124722117608902, ; 159: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 110
	i64 11340910727871153756, ; 160: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 76
	i64 11378999285100958087, ; 161: Wplaty_v2.Android.dll => 0x9dea538fafddd187 => 0
	i64 11392833485892708388, ; 162: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 100
	i64 11481714388108425262, ; 163: Syncfusion.SfComboBox.XForms => 0x9f573e673bb1b82e => 36
	i64 11529969570048099689, ; 164: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 110
	i64 11578238080964724296, ; 165: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 85
	i64 11580057168383206117, ; 166: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 61
	i64 11597940890313164233, ; 167: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11606334278361545453, ; 168: Syncfusion.SfMaskedEdit.XForms.Android => 0xa111fb887e2dfaed => 40
	i64 11672361001936329215, ; 169: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 82
	i64 11739066727115742305, ; 170: SQLite-net.dll => 0xa2e98afdf8575c61 => 21
	i64 11806260347154423189, ; 171: SQLite-net => 0xa3d8433bc5eb5d95 => 21
	i64 11869220915266023700, ; 172: Syncfusion.SfAutoComplete.XForms.dll => 0xa4b7f1895f117114 => 34
	i64 12007499501337384656, ; 173: Syncfusion.XlsIO.Portable => 0xa6a3352d91e516d0 => 47
	i64 12036415867504728778, ; 174: CsvHelper => 0xa709f075b77e9aca => 13
	i64 12102847907131387746, ; 175: System.Buffers => 0xa7f5f40c43256f62 => 48
	i64 12123043025855404482, ; 176: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 6
	i64 12137774235383566651, ; 177: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 108
	i64 12212747205940921632, ; 178: Syncfusion.SfProgressBar.XForms.Android => 0xa97c64e0bdc0c520 => 45
	i64 12279246230491828964, ; 179: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 25
	i64 12312508881223092658, ; 180: Syncfusion.SfMaskedEdit.XForms.Android.dll => 0xaaded197cf2509b2 => 40
	i64 12451044538927396471, ; 181: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 81
	i64 12466513435562512481, ; 182: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 92
	i64 12487638416075308985, ; 183: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 78
	i64 12538491095302438457, ; 184: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 69
	i64 12550732019250633519, ; 185: System.IO.Compression => 0xae2d28465e8e1b2f => 123
	i64 12700543734426720211, ; 186: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 70
	i64 12963446364377008305, ; 187: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 9
	i64 13058651076603825364, ; 188: Syncfusion.Data.Portable.dll => 0xb539a5f76abe4cd4 => 29
	i64 13204127855005737413, ; 189: Wplaty_v2.Android => 0xb73e7c535e7521c5 => 0
	i64 13297997883559027856, ; 190: Syncfusion.Compression.Portable => 0xb88bfa9e896ea490 => 26
	i64 13370592475155966277, ; 191: System.Runtime.Serialization => 0xb98de304062ea945 => 12
	i64 13401370062847626945, ; 192: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 108
	i64 13404347523447273790, ; 193: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 72
	i64 13454009404024712428, ; 194: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 119
	i64 13491513212026656886, ; 195: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 66
	i64 13572454107664307259, ; 196: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 101
	i64 13622732128915678507, ; 197: Syncfusion.Core.XForms.Android => 0xbd0daab1e651e52b => 27
	i64 13633379896196278604, ; 198: Wplaty_v2 => 0xbd337ec868bb294c => 59
	i64 13647433987885684830, ; 199: Syncfusion.SfNumericTextBox.Android => 0xbd656ce79f84d85e => 42
	i64 13647894001087880694, ; 200: System.Data.dll => 0xbd670f48cb071df6 => 120
	i64 13902543935539791585, ; 201: Syncfusion.SfMaskedEdit.XForms => 0xc0efc20cf01c46e1 => 41
	i64 13959074834287824816, ; 202: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 81
	i64 13967638549803255703, ; 203: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 115
	i64 13970307180132182141, ; 204: Syncfusion.Licensing => 0xc1e0805ccade287d => 31
	i64 14061024831517255851, ; 205: Syncfusion.SfComboBox.XForms.Android => 0xc322cb95f48868ab => 35
	i64 14124974489674258913, ; 206: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 69
	i64 14125464355221830302, ; 207: System.Threading.dll => 0xc407bafdbc707a9e => 129
	i64 14148919944076435199, ; 208: DocumentFormat.OpenXml.dll => 0xc45b0fb9961d9eff => 14
	i64 14172845254133543601, ; 209: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 95
	i64 14261073672896646636, ; 210: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 100
	i64 14327695147300244862, ; 211: System.Reflection.dll => 0xc6d632d338eb4d7e => 3
	i64 14336319490208926827, ; 212: Syncfusion.SfGridConverter.XForms.dll => 0xc6f4d69e88698c6b => 39
	i64 14486659737292545672, ; 213: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 88
	i64 14496551307514333127, ; 214: Syncfusion.SfGridConverter.XForms => 0xc92e189bb09dc7c7 => 39
	i64 14538127318538747197, ; 215: Syncfusion.Licensing.dll => 0xc9c1cdc518e77d3d => 31
	i64 14644440854989303794, ; 216: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 93
	i64 14748851336349168659, ; 217: Syncfusion.Pdf.Portable.dll => 0xccae7225cc233413 => 32
	i64 14792063746108907174, ; 218: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 119
	i64 14852515768018889994, ; 219: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 76
	i64 14935719434541007538, ; 220: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 10
	i64 14987728460634540364, ; 221: System.IO.Compression.dll => 0xcfff1ba06622494c => 123
	i64 14988210264188246988, ; 222: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 78
	i64 15076659072870671916, ; 223: System.ObjectModel.dll => 0xd13b0d8c1620662c => 128
	i64 15133485256822086103, ; 224: System.Linq.dll => 0xd204f0a9127dd9d7 => 131
	i64 15241747024500257992, ; 225: Syncfusion.SfMaskedEdit.XForms.dll => 0xd385902a1fb474c8 => 41
	i64 15370334346939861994, ; 226: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 75
	i64 15423352120420908645, ; 227: Syncfusion.SfComboBox.XForms.Android.dll => 0xd60ac1097f74be65 => 35
	i64 15526743539506359484, ; 228: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 7
	i64 15582737692548360875, ; 229: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 91
	i64 15609085926864131306, ; 230: System.dll => 0xd89e9cf3334914ea => 50
	i64 15777549416145007739, ; 231: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 103
	i64 15810740023422282496, ; 232: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 117
	i64 16154507427712707110, ; 233: System => 0xe03056ea4e39aa26 => 50
	i64 16527749710595459278, ; 234: Syncfusion.Compression.Portable.dll => 0xe55e5ccb449b88ce => 26
	i64 16565028646146589191, ; 235: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 125
	i64 16621146507174665210, ; 236: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 73
	i64 16677317093839702854, ; 237: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 98
	i64 16755018182064898362, ; 238: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 23
	i64 16822611501064131242, ; 239: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 122
	i64 16833383113903931215, ; 240: mscorlib => 0xe99c30c1484d7f4f => 19
	i64 16848182392821183571, ; 241: CsvHelper.dll => 0xe9d0c49eeb18f453 => 13
	i64 16890310621557459193, ; 242: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 130
	i64 16955506688107500054, ; 243: Syncfusion.Pdf.Portable => 0xeb4e0f7fab685216 => 32
	i64 17024911836938395553, ; 244: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 62
	i64 17031351772568316411, ; 245: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 96
	i64 17037200463775726619, ; 246: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 84
	i64 17285063141349522879, ; 247: Rg.Plugins.Popup => 0xefe0e158cc55fdbf => 20
	i64 17544493274320527064, ; 248: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 67
	i64 17627500474728259406, ; 249: System.Globalization => 0xf4a176498a351f4e => 8
	i64 17704177640604968747, ; 250: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 92
	i64 17710060891934109755, ; 251: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 90
	i64 17832140366245679051, ; 252: Syncfusion.Data.Portable => 0xf7787d2f32fa4fcb => 29
	i64 17838668724098252521, ; 253: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 48
	i64 17882897186074144999, ; 254: FormsViewGroup => 0xf82cd03e3ac830e7 => 15
	i64 17892495832318972303, ; 255: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 117
	i64 17928294245072900555, ; 256: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 124
	i64 18025913125965088385, ; 257: System.Threading => 0xfa28e87b91334681 => 129
	i64 18116111925905154859, ; 258: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 66
	i64 18121036031235206392, ; 259: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 96
	i64 18129453464017766560, ; 260: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 127
	i64 18219918163864392437, ; 261: Syncfusion.SfDataGrid.XForms.dll => 0xfcda270969d312f5 => 38
	i64 18284618658670613420, ; 262: System.IO.Packaging.dll => 0xfdc003cb438a93ac => 51
	i64 18305135509493619199, ; 263: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 97
	i64 18370042311372477656, ; 264: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 24
	i64 18380184030268848184 ; 265: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 109
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [266 x i32] [
	i32 80, i32 18, i32 70, i32 102, i32 20, i32 103, i32 89, i32 9, ; 0..7
	i32 83, i32 24, i32 79, i32 121, i32 116, i32 132, i32 118, i32 23, ; 8..15
	i32 65, i32 12, i32 36, i32 25, i32 63, i32 91, i32 84, i32 52, ; 16..23
	i32 64, i32 102, i32 61, i32 90, i32 112, i32 28, i32 30, i32 95, ; 24..31
	i32 68, i32 14, i32 45, i32 79, i32 126, i32 87, i32 55, i32 27, ; 32..39
	i32 74, i32 107, i32 56, i32 60, i32 57, i32 19, i32 99, i32 55, ; 40..47
	i32 114, i32 118, i32 86, i32 62, i32 54, i32 105, i32 104, i32 53, ; 48..55
	i32 56, i32 1, i32 101, i32 30, i32 80, i32 43, i32 52, i32 22, ; 56..63
	i32 127, i32 109, i32 67, i32 60, i32 104, i32 2, i32 2, i32 115, ; 64..71
	i32 59, i32 113, i32 93, i32 94, i32 107, i32 106, i32 73, i32 49, ; 72..79
	i32 42, i32 46, i32 111, i32 71, i32 99, i32 88, i32 116, i32 15, ; 80..87
	i32 22, i32 89, i32 87, i32 68, i32 77, i32 126, i32 10, i32 83, ; 88..95
	i32 44, i32 58, i32 54, i32 28, i32 85, i32 82, i32 131, i32 34, ; 96..103
	i32 3, i32 58, i32 128, i32 38, i32 114, i32 113, i32 11, i32 17, ; 104..111
	i32 120, i32 63, i32 37, i32 125, i32 4, i32 37, i32 86, i32 122, ; 112..119
	i32 6, i32 16, i32 4, i32 5, i32 72, i32 98, i32 106, i32 16, ; 120..127
	i32 17, i32 97, i32 124, i32 46, i32 33, i32 111, i32 64, i32 43, ; 128..135
	i32 130, i32 53, i32 74, i32 94, i32 33, i32 18, i32 71, i32 121, ; 136..143
	i32 132, i32 11, i32 77, i32 7, i32 105, i32 75, i32 47, i32 8, ; 144..151
	i32 51, i32 5, i32 65, i32 49, i32 44, i32 57, i32 112, i32 110, ; 152..159
	i32 76, i32 0, i32 100, i32 36, i32 110, i32 85, i32 61, i32 1, ; 160..167
	i32 40, i32 82, i32 21, i32 21, i32 34, i32 47, i32 13, i32 48, ; 168..175
	i32 6, i32 108, i32 45, i32 25, i32 40, i32 81, i32 92, i32 78, ; 176..183
	i32 69, i32 123, i32 70, i32 9, i32 29, i32 0, i32 26, i32 12, ; 184..191
	i32 108, i32 72, i32 119, i32 66, i32 101, i32 27, i32 59, i32 42, ; 192..199
	i32 120, i32 41, i32 81, i32 115, i32 31, i32 35, i32 69, i32 129, ; 200..207
	i32 14, i32 95, i32 100, i32 3, i32 39, i32 88, i32 39, i32 31, ; 208..215
	i32 93, i32 32, i32 119, i32 76, i32 10, i32 123, i32 78, i32 128, ; 216..223
	i32 131, i32 41, i32 75, i32 35, i32 7, i32 91, i32 50, i32 103, ; 224..231
	i32 117, i32 50, i32 26, i32 125, i32 73, i32 98, i32 23, i32 122, ; 232..239
	i32 19, i32 13, i32 130, i32 32, i32 62, i32 96, i32 84, i32 20, ; 240..247
	i32 67, i32 8, i32 92, i32 90, i32 29, i32 48, i32 15, i32 117, ; 248..255
	i32 124, i32 129, i32 66, i32 96, i32 127, i32 38, i32 51, i32 97, ; 256..263
	i32 24, i32 109 ; 264..265
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}

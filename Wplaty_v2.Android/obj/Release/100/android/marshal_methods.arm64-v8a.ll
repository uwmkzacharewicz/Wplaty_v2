; ModuleID = 'obj\Release\100\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\100\android\marshal_methods.arm64-v8a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [162 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 10
	i64 232391251801502327, ; 1: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 66
	i64 263803244706540312, ; 2: Rg.Plugins.Popup.dll => 0x3a937a743542b18 => 12
	i64 702024105029695270, ; 3: System.Drawing.Common => 0x9be17343c0e7726 => 1
	i64 720058930071658100, ; 4: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 60
	i64 870603111519317375, ; 5: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 16
	i64 872800313462103108, ; 6: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 57
	i64 996343623809489702, ; 7: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 73
	i64 1000557547492888992, ; 8: Mono.Security.dll => 0xde2b1c9cba651a0 => 80
	i64 1120440138749646132, ; 9: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 75
	i64 1301485588176585670, ; 10: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 15
	i64 1425944114962822056, ; 11: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 4
	i64 1435064484980070193, ; 12: Syncfusion.SfComboBox.XForms.dll => 0x13ea5f8bb9041731 => 28
	i64 1518315023656898250, ; 13: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 17
	i64 1624659445732251991, ; 14: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 50
	i64 1795316252682057001, ; 15: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 51
	i64 1836611346387731153, ; 16: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 66
	i64 1981742497975770890, ; 17: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 63
	i64 1986553961460820075, ; 18: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 69
	i64 2076847052340733488, ; 19: Syncfusion.Core.XForms => 0x1cd27163f7962630 => 20
	i64 2126915263223078201, ; 20: Syncfusion.GridCommon.Portable => 0x1d845229bbc49d39 => 22
	i64 2207662933261301575, ; 21: DocumentFormat.OpenXml => 0x1ea331bdb8d63747 => 6
	i64 2254786158495914142, ; 22: Syncfusion.SfProgressBar.XForms.Android.dll => 0x1f4a9c10959dd89e => 37
	i64 2262844636196693701, ; 23: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 57
	i64 2329709569556905518, ; 24: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 62
	i64 2337758774805907496, ; 25: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 45
	i64 2469392061734276978, ; 26: Syncfusion.Core.XForms.Android.dll => 0x22450aff2ad74f72 => 19
	i64 2470498323731680442, ; 27: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 53
	i64 2547086958574651984, ; 28: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 49
	i64 2592350477072141967, ; 29: System.Xml.dll => 0x23f9e10627330e8f => 46
	i64 2624866290265602282, ; 30: mscorlib.dll => 0x246d65fbde2db8ea => 11
	i64 2783046991838674048, ; 31: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 45
	i64 2960931600190307745, ; 32: Xamarin.Forms.Core => 0x2917579a49927da1 => 71
	i64 3017704767998173186, ; 33: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 75
	i64 3289520064315143713, ; 34: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 61
	i64 3522470458906976663, ; 35: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 67
	i64 3531994851595924923, ; 36: System.Numerics => 0x31042a9aade235bb => 44
	i64 3727469159507183293, ; 37: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 65
	i64 3730887114094830029, ; 38: Syncfusion.GridCommon.Portable.dll => 0x33c6c6102cb461cd => 22
	i64 3908336291285777176, ; 39: Syncfusion.SfNumericTextBox.XForms.Android.dll => 0x363d332650db3b18 => 35
	i64 4337444564132831293, ; 40: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 14
	i64 4525561845656915374, ; 41: System.ServiceModel.Internals => 0x3ece06856b710dae => 79
	i64 4794310189461587505, ; 42: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 49
	i64 4795410492532947900, ; 43: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 67
	i64 5142919913060024034, ; 44: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 72
	i64 5163087481829776912, ; 45: Wplaty_v2.dll => 0x47a6f8b5a2bade10 => 48
	i64 5203618020066742981, ; 46: Xamarin.Essentials => 0x4836f704f0e652c5 => 70
	i64 5507995362134886206, ; 47: System.Core.dll => 0x4c705499688c873e => 41
	i64 5540976586714296940, ; 48: Syncfusion.SfNumericTextBox.Android.dll => 0x4ce580d927dcb26c => 34
	i64 5679624767254653100, ; 49: Syncfusion.SfProgressBar.XForms => 0x4ed214a245b968ac => 38
	i64 6085203216496545422, ; 50: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 73
	i64 6086316965293125504, ; 51: FormsViewGroup.dll => 0x5476f10882baef80 => 7
	i64 6183170893902868313, ; 52: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 14
	i64 6401687960814735282, ; 53: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 62
	i64 6548213210057960872, ; 54: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 56
	i64 6617685658146568858, ; 55: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 2
	i64 6659513131007730089, ; 56: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 60
	i64 6711679492026985136, ; 57: Syncfusion.SfNumericTextBox.XForms.dll => 0x5d24acf0208aeab0 => 36
	i64 6876862101832370452, ; 58: System.Xml.Linq => 0x5f6f85a57d108914 => 47
	i64 7026608356547306326, ; 59: Syncfusion.Core.XForms.dll => 0x618387125bcb2356 => 20
	i64 7103753931438454322, ; 60: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 59
	i64 7270951509819434961, ; 61: Syncfusion.SfAutoComplete.XForms => 0x64e79be001e0a7d1 => 26
	i64 7488575175965059935, ; 62: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 47
	i64 7566872048948821773, ; 63: Syncfusion.SfDataGrid.XForms => 0x6902ee099a6d3f0d => 30
	i64 7635363394907363464, ; 64: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 71
	i64 7637365915383206639, ; 65: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 70
	i64 7654504624184590948, ; 66: System.Net.Http => 0x6a3a4366801b8264 => 3
	i64 7735176074855944702, ; 67: Microsoft.CSharp => 0x6b58dda848e391fe => 9
	i64 7820441508502274321, ; 68: System.Data => 0x6c87ca1e14ff8111 => 77
	i64 7836164640616011524, ; 69: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 50
	i64 7956423435673659877, ; 70: Syncfusion.SfDataGrid.XForms.Android => 0x6e6ae4f5b5ebe9e5 => 29
	i64 8083054321397151520, ; 71: Syncfusion.SfDataGrid.XForms.Android.dll => 0x702cc71457103720 => 29
	i64 8083354569033831015, ; 72: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 61
	i64 8167236081217502503, ; 73: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 8
	i64 8626175481042262068, ; 74: Java.Interop => 0x77b654e585b55834 => 8
	i64 8638972117149407195, ; 75: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 9
	i64 8963482838182047088, ; 76: Syncfusion.SfProgressBar.XForms.dll => 0x7c64b0269826ad70 => 38
	i64 9293890220217345133, ; 77: Syncfusion.SfAutoComplete.XForms.Android.dll => 0x80fa87ea0588246d => 25
	i64 9324707631942237306, ; 78: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 51
	i64 9418564226550032778, ; 79: Syncfusion.SfNumericTextBox.XForms.Android => 0x82b5764329b7698a => 35
	i64 9662334977499516867, ; 80: System.Numerics.dll => 0x8617827802b0cfc3 => 44
	i64 9678050649315576968, ; 81: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 53
	i64 9754517241374622406, ; 82: Syncfusion.SfAutoComplete.XForms.Android => 0x875f01bfd78ec2c6 => 25
	i64 9808709177481450983, ; 83: Mono.Android.dll => 0x881f890734e555e7 => 10
	i64 9998632235833408227, ; 84: Mono.Security => 0x8ac2470b209ebae3 => 80
	i64 10038780035334861115, ; 85: System.Net.Http.dll => 0x8b50e941206af13b => 3
	i64 10229024438826829339, ; 86: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 56
	i64 10430153318873392755, ; 87: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 54
	i64 10438231987199687841, ; 88: Syncfusion.XlsIO.Portable.dll => 0x90dc0cb030283ca1 => 39
	i64 10650478070646097812, ; 89: System.IO.Packaging => 0x93ce196068f2c794 => 43
	i64 11023048688141570732, ; 90: System.Core => 0x98f9bc61168392ac => 41
	i64 11034181033432536911, ; 91: Syncfusion.SfNumericTextBox.XForms => 0x992149303519574f => 36
	i64 11037814507248023548, ; 92: System.Xml => 0x992e31d0412bf7fc => 46
	i64 11122995063473561350, ; 93: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 69
	i64 11162124722117608902, ; 94: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 68
	i64 11340910727871153756, ; 95: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 55
	i64 11378999285100958087, ; 96: Wplaty_v2.Android.dll => 0x9dea538fafddd187 => 0
	i64 11481714388108425262, ; 97: Syncfusion.SfComboBox.XForms => 0x9f573e673bb1b82e => 28
	i64 11529969570048099689, ; 98: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 68
	i64 11606334278361545453, ; 99: Syncfusion.SfMaskedEdit.XForms.Android => 0xa111fb887e2dfaed => 32
	i64 11672361001936329215, ; 100: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 59
	i64 11739066727115742305, ; 101: SQLite-net.dll => 0xa2e98afdf8575c61 => 13
	i64 11806260347154423189, ; 102: SQLite-net => 0xa3d8433bc5eb5d95 => 13
	i64 11869220915266023700, ; 103: Syncfusion.SfAutoComplete.XForms.dll => 0xa4b7f1895f117114 => 26
	i64 12007499501337384656, ; 104: Syncfusion.XlsIO.Portable => 0xa6a3352d91e516d0 => 39
	i64 12036415867504728778, ; 105: CsvHelper => 0xa709f075b77e9aca => 5
	i64 12102847907131387746, ; 106: System.Buffers => 0xa7f5f40c43256f62 => 40
	i64 12212747205940921632, ; 107: Syncfusion.SfProgressBar.XForms.Android => 0xa97c64e0bdc0c520 => 37
	i64 12279246230491828964, ; 108: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 17
	i64 12312508881223092658, ; 109: Syncfusion.SfMaskedEdit.XForms.Android.dll => 0xaaded197cf2509b2 => 32
	i64 12451044538927396471, ; 110: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 58
	i64 12466513435562512481, ; 111: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 64
	i64 12538491095302438457, ; 112: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 52
	i64 12550732019250633519, ; 113: System.IO.Compression => 0xae2d28465e8e1b2f => 78
	i64 12963446364377008305, ; 114: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 1
	i64 13058651076603825364, ; 115: Syncfusion.Data.Portable.dll => 0xb539a5f76abe4cd4 => 21
	i64 13204127855005737413, ; 116: Wplaty_v2.Android => 0xb73e7c535e7521c5 => 0
	i64 13297997883559027856, ; 117: Syncfusion.Compression.Portable => 0xb88bfa9e896ea490 => 18
	i64 13370592475155966277, ; 118: System.Runtime.Serialization => 0xb98de304062ea945 => 4
	i64 13454009404024712428, ; 119: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 76
	i64 13572454107664307259, ; 120: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 65
	i64 13622732128915678507, ; 121: Syncfusion.Core.XForms.Android => 0xbd0daab1e651e52b => 19
	i64 13633379896196278604, ; 122: Wplaty_v2 => 0xbd337ec868bb294c => 48
	i64 13647433987885684830, ; 123: Syncfusion.SfNumericTextBox.Android => 0xbd656ce79f84d85e => 34
	i64 13647894001087880694, ; 124: System.Data.dll => 0xbd670f48cb071df6 => 77
	i64 13902543935539791585, ; 125: Syncfusion.SfMaskedEdit.XForms => 0xc0efc20cf01c46e1 => 33
	i64 13959074834287824816, ; 126: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 58
	i64 13967638549803255703, ; 127: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 72
	i64 13970307180132182141, ; 128: Syncfusion.Licensing => 0xc1e0805ccade287d => 23
	i64 14061024831517255851, ; 129: Syncfusion.SfComboBox.XForms.Android => 0xc322cb95f48868ab => 27
	i64 14124974489674258913, ; 130: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 52
	i64 14148919944076435199, ; 131: DocumentFormat.OpenXml.dll => 0xc45b0fb9961d9eff => 6
	i64 14336319490208926827, ; 132: Syncfusion.SfGridConverter.XForms.dll => 0xc6f4d69e88698c6b => 31
	i64 14496551307514333127, ; 133: Syncfusion.SfGridConverter.XForms => 0xc92e189bb09dc7c7 => 31
	i64 14538127318538747197, ; 134: Syncfusion.Licensing.dll => 0xc9c1cdc518e77d3d => 23
	i64 14748851336349168659, ; 135: Syncfusion.Pdf.Portable.dll => 0xccae7225cc233413 => 24
	i64 14792063746108907174, ; 136: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 76
	i64 14852515768018889994, ; 137: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 55
	i64 14935719434541007538, ; 138: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 2
	i64 14987728460634540364, ; 139: System.IO.Compression.dll => 0xcfff1ba06622494c => 78
	i64 15241747024500257992, ; 140: Syncfusion.SfMaskedEdit.XForms.dll => 0xd385902a1fb474c8 => 33
	i64 15370334346939861994, ; 141: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 54
	i64 15423352120420908645, ; 142: Syncfusion.SfComboBox.XForms.Android.dll => 0xd60ac1097f74be65 => 27
	i64 15609085926864131306, ; 143: System.dll => 0xd89e9cf3334914ea => 42
	i64 15810740023422282496, ; 144: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 74
	i64 16154507427712707110, ; 145: System => 0xe03056ea4e39aa26 => 42
	i64 16527749710595459278, ; 146: Syncfusion.Compression.Portable.dll => 0xe55e5ccb449b88ce => 18
	i64 16755018182064898362, ; 147: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 15
	i64 16833383113903931215, ; 148: mscorlib => 0xe99c30c1484d7f4f => 11
	i64 16848182392821183571, ; 149: CsvHelper.dll => 0xe9d0c49eeb18f453 => 5
	i64 16955506688107500054, ; 150: Syncfusion.Pdf.Portable => 0xeb4e0f7fab685216 => 24
	i64 17285063141349522879, ; 151: Rg.Plugins.Popup => 0xefe0e158cc55fdbf => 12
	i64 17704177640604968747, ; 152: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 64
	i64 17710060891934109755, ; 153: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 63
	i64 17832140366245679051, ; 154: Syncfusion.Data.Portable => 0xf7787d2f32fa4fcb => 21
	i64 17838668724098252521, ; 155: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 40
	i64 17882897186074144999, ; 156: FormsViewGroup => 0xf82cd03e3ac830e7 => 7
	i64 17892495832318972303, ; 157: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 74
	i64 18129453464017766560, ; 158: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 79
	i64 18219918163864392437, ; 159: Syncfusion.SfDataGrid.XForms.dll => 0xfcda270969d312f5 => 30
	i64 18284618658670613420, ; 160: System.IO.Packaging.dll => 0xfdc003cb438a93ac => 43
	i64 18370042311372477656 ; 161: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 16
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [162 x i32] [
	i32 10, i32 66, i32 12, i32 1, i32 60, i32 16, i32 57, i32 73, ; 0..7
	i32 80, i32 75, i32 15, i32 4, i32 28, i32 17, i32 50, i32 51, ; 8..15
	i32 66, i32 63, i32 69, i32 20, i32 22, i32 6, i32 37, i32 57, ; 16..23
	i32 62, i32 45, i32 19, i32 53, i32 49, i32 46, i32 11, i32 45, ; 24..31
	i32 71, i32 75, i32 61, i32 67, i32 44, i32 65, i32 22, i32 35, ; 32..39
	i32 14, i32 79, i32 49, i32 67, i32 72, i32 48, i32 70, i32 41, ; 40..47
	i32 34, i32 38, i32 73, i32 7, i32 14, i32 62, i32 56, i32 2, ; 48..55
	i32 60, i32 36, i32 47, i32 20, i32 59, i32 26, i32 47, i32 30, ; 56..63
	i32 71, i32 70, i32 3, i32 9, i32 77, i32 50, i32 29, i32 29, ; 64..71
	i32 61, i32 8, i32 8, i32 9, i32 38, i32 25, i32 51, i32 35, ; 72..79
	i32 44, i32 53, i32 25, i32 10, i32 80, i32 3, i32 56, i32 54, ; 80..87
	i32 39, i32 43, i32 41, i32 36, i32 46, i32 69, i32 68, i32 55, ; 88..95
	i32 0, i32 28, i32 68, i32 32, i32 59, i32 13, i32 13, i32 26, ; 96..103
	i32 39, i32 5, i32 40, i32 37, i32 17, i32 32, i32 58, i32 64, ; 104..111
	i32 52, i32 78, i32 1, i32 21, i32 0, i32 18, i32 4, i32 76, ; 112..119
	i32 65, i32 19, i32 48, i32 34, i32 77, i32 33, i32 58, i32 72, ; 120..127
	i32 23, i32 27, i32 52, i32 6, i32 31, i32 31, i32 23, i32 24, ; 128..135
	i32 76, i32 55, i32 2, i32 78, i32 33, i32 54, i32 27, i32 42, ; 136..143
	i32 74, i32 42, i32 18, i32 15, i32 11, i32 5, i32 24, i32 12, ; 144..151
	i32 64, i32 63, i32 21, i32 40, i32 7, i32 74, i32 79, i32 30, ; 152..159
	i32 43, i32 16 ; 160..161
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
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}

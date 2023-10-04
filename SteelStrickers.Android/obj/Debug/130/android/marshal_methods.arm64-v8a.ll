; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [292 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 86
	i64 30579257353033782, ; 1: Syncfusion.Buttons.XForms => 0x6ca3ac2c05d836 => 12
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 6
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 76
	i64 229321459903363178, ; 4: Syncfusion.Cards.XForms => 0x32eb6a71ce9f86a => 14
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 111
	i64 263803244706540312, ; 6: Rg.Plugins.Popup.dll => 0x3a937a743542b18 => 9
	i64 295915112840604065, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 112
	i64 403694196094993479, ; 8: Xamarin.AndroidX.MediaRouter => 0x59a35bb84210447 => 101
	i64 590536689428908136, ; 9: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x83201fd803ec868 => 33
	i64 634308326490598313, ; 10: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 95
	i64 702024105029695270, ; 11: System.Drawing.Common => 0x9be17343c0e7726 => 1
	i64 720058930071658100, ; 12: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 89
	i64 816102801403336439, ; 13: Xamarin.Android.Support.Collections => 0xb53612c89d8d6f7 => 37
	i64 846634227898301275, ; 14: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0xbbfd9583890bb5b => 30
	i64 872800313462103108, ; 15: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 85
	i64 940822596282819491, ; 16: System.Transactions => 0xd0e792aa81923a3 => 139
	i64 996343623809489702, ; 17: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 125
	i64 1000557547492888992, ; 18: Mono.Security.dll => 0xde2b1c9cba651a0 => 145
	i64 1120440138749646132, ; 19: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 127
	i64 1315114680217950157, ; 20: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 71
	i64 1342439039765371018, ; 21: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 47
	i64 1425944114962822056, ; 22: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 3
	i64 1490981186906623721, ; 23: Xamarin.Android.Support.VersionedParcelable => 0x14b1077d6c5c0ee9 => 63
	i64 1624659445732251991, ; 24: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 69
	i64 1628611045998245443, ; 25: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 97
	i64 1636321030536304333, ; 26: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 90
	i64 1731380447121279447, ; 27: Newtonsoft.Json => 0x18071957e9b889d7 => 8
	i64 1744702963312407042, ; 28: Xamarin.Android.Support.v7.AppCompat => 0x18366e19eeceb202 => 57
	i64 1795316252682057001, ; 29: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 70
	i64 1836611346387731153, ; 30: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 111
	i64 1860886102525309849, ; 31: Xamarin.Android.Support.v7.RecyclerView.dll => 0x19d3320d047b7399 => 61
	i64 1875917498431009007, ; 32: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 66
	i64 1938067011858688285, ; 33: Xamarin.Android.Support.v4.dll => 0x1ae565add0bd691d => 56
	i64 1981742497975770890, ; 34: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 96
	i64 2064708342624596306, ; 35: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 132
	i64 2076847052340733488, ; 36: Syncfusion.Core.XForms => 0x1cd27163f7962630 => 16
	i64 2133195048986300728, ; 37: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 8
	i64 2136356949452311481, ; 38: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 102
	i64 2141054624086497428, ; 39: Syncfusion.SfCarousel.XForms.Android => 0x1db68dd639621894 => 18
	i64 2165725771938924357, ; 40: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 74
	i64 2262844636196693701, ; 41: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 85
	i64 2284400282711631002, ; 42: System.Web.Services => 0x1fb3d1f42fd4249a => 144
	i64 2329709569556905518, ; 43: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 93
	i64 2469392061734276978, ; 44: Syncfusion.Core.XForms.Android.dll => 0x22450aff2ad74f72 => 15
	i64 2470498323731680442, ; 45: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 80
	i64 2479423007379663237, ; 46: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 117
	i64 2497223385847772520, ; 47: System.Runtime => 0x22a7eb7046413568 => 24
	i64 2545028026929610735, ; 48: SteelStrickers.Android => 0x2351c181a08d7fef => 0
	i64 2547086958574651984, ; 49: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 65
	i64 2592350477072141967, ; 50: System.Xml.dll => 0x23f9e10627330e8f => 25
	i64 2624866290265602282, ; 51: mscorlib.dll => 0x246d65fbde2db8ea => 7
	i64 2694427813909235223, ; 52: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 107
	i64 2787234703088983483, ; 53: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 113
	i64 2949706848458024531, ; 54: Xamarin.Android.Support.SlidingPaneLayout => 0x28ef76c01de0a653 => 53
	i64 2960931600190307745, ; 55: Xamarin.Forms.Core => 0x2917579a49927da1 => 123
	i64 2977248461349026546, ; 56: Xamarin.Android.Support.DrawerLayout => 0x29514fb392c97af2 => 46
	i64 3017704767998173186, ; 57: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 127
	i64 3022227708164871115, ; 58: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 51
	i64 3289520064315143713, ; 59: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 92
	i64 3303437397778967116, ; 60: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 67
	i64 3311221304742556517, ; 61: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 23
	i64 3344514922410554693, ; 62: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 135
	i64 3493805808809882663, ; 63: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 115
	i64 3522470458906976663, ; 64: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 114
	i64 3531994851595924923, ; 65: System.Numerics => 0x31042a9aade235bb => 22
	i64 3571415421602489686, ; 66: System.Runtime.dll => 0x319037675df7e556 => 24
	i64 3710460007389013999, ; 67: Syncfusion.SfCarousel.XForms.dll => 0x337e33b7c5b727ef => 19
	i64 3716579019761409177, ; 68: netstandard.dll => 0x3393f0ed5c8c5c99 => 137
	i64 3727469159507183293, ; 69: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 110
	i64 3772598417116884899, ; 70: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 86
	i64 3943415582112705276, ; 71: Syncfusion.Buttons.XForms.dll => 0x36b9d3942d916afc => 12
	i64 4252163538099460320, ; 72: Xamarin.Android.Support.ViewPager.dll => 0x3b02b8357f4958e0 => 64
	i64 4264996749430196783, ; 73: Xamarin.Android.Support.Transition.dll => 0x3b304ff259fb8a2f => 55
	i64 4349341163892612332, ; 74: Xamarin.Android.Support.DocumentFile => 0x3c5bf6bea8cd9cec => 45
	i64 4416987920449902723, ; 75: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0x3d4c4b1c879b9883 => 36
	i64 4525561845656915374, ; 76: System.ServiceModel.Internals => 0x3ece06856b710dae => 136
	i64 4636684751163556186, ; 77: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 119
	i64 4782108999019072045, ; 78: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 73
	i64 4794310189461587505, ; 79: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 65
	i64 4795410492532947900, ; 80: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 114
	i64 4841234827713643511, ; 81: Xamarin.Android.Support.CoordinaterLayout => 0x432f856d041f03f7 => 39
	i64 4963205065368577818, ; 82: Xamarin.Android.Support.LocalBroadcastManager.dll => 0x44e0d8b5f4b6a71a => 50
	i64 5142919913060024034, ; 83: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 124
	i64 5178572682164047940, ; 84: Xamarin.Android.Support.Print.dll => 0x47ddfc6acbee1044 => 52
	i64 5203618020066742981, ; 85: Xamarin.Essentials => 0x4836f704f0e652c5 => 122
	i64 5205316157927637098, ; 86: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 99
	i64 5288341611614403055, ; 87: Xamarin.Android.Support.Interpolator.dll => 0x4963f6ad4b3179ef => 48
	i64 5348796042099802469, ; 88: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 100
	i64 5376510917114486089, ; 89: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 117
	i64 5408338804355907810, ; 90: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 116
	i64 5439315836349573567, ; 91: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0x4b7c54ef36c5e9bf => 34
	i64 5451019430259338467, ; 92: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 79
	i64 5507995362134886206, ; 93: System.Core.dll => 0x4c705499688c873e => 20
	i64 5563049671862343767, ; 94: Xamarin.AndroidX.Palette.dll => 0x4d33ec33c7355857 => 106
	i64 5574231584441077149, ; 95: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 68
	i64 5692067934154308417, ; 96: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 121
	i64 5757522595884336624, ; 97: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 77
	i64 5767696078500135884, ; 98: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 35
	i64 5814345312393086621, ; 99: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 107
	i64 5896680224035167651, ; 100: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 94
	i64 6044705416426755068, ; 101: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0x53e31b8ccdff13fc => 54
	i64 6085203216496545422, ; 102: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 125
	i64 6086316965293125504, ; 103: FormsViewGroup.dll => 0x5476f10882baef80 => 4
	i64 6311200438583329442, ; 104: Xamarin.Android.Support.LocalBroadcastManager => 0x5795e35c580c82a2 => 50
	i64 6319713645133255417, ; 105: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 95
	i64 6401687960814735282, ; 106: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 93
	i64 6405879832841858445, ; 107: Xamarin.Android.Support.Vector.Drawable.dll => 0x58e641c4a660ad8d => 62
	i64 6431494048024938549, ; 108: Syncfusion.SfCarousel.XForms.Android.dll => 0x594141c2db90c835 => 18
	i64 6437453774371681866, ; 109: Xamarin.Android.Support.v7.Palette => 0x59566e19c76bf64a => 60
	i64 6504860066809920875, ; 110: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 74
	i64 6548213210057960872, ; 111: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 83
	i64 6588599331800941662, ; 112: Xamarin.Android.Support.v4 => 0x5b6f682f335f045e => 56
	i64 6591024623626361694, ; 113: System.Web.Services.dll => 0x5b7805f9751a1b5e => 144
	i64 6659513131007730089, ; 114: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 89
	i64 6876862101832370452, ; 115: System.Xml.Linq => 0x5f6f85a57d108914 => 26
	i64 6878024704864574184, ; 116: Syncfusion.Cards.XForms.dll => 0x5f73a70719d05ae8 => 14
	i64 6894844156784520562, ; 117: System.Numerics.Vectors => 0x5faf683aead1ad72 => 23
	i64 7026608356547306326, ; 118: Syncfusion.Core.XForms.dll => 0x618387125bcb2356 => 16
	i64 7036436454368433159, ; 119: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 91
	i64 7103753931438454322, ; 120: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 88
	i64 7164916624638427275, ; 121: Xamarin.Android.Support.v7.MediaRouter.dll => 0x636ee5b570dd408b => 59
	i64 7194160955514091247, ; 122: Xamarin.Android.Support.CursorAdapter.dll => 0x63d6cb45d266f6ef => 42
	i64 7488575175965059935, ; 123: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 26
	i64 7635363394907363464, ; 124: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 123
	i64 7637365915383206639, ; 125: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 122
	i64 7654504624184590948, ; 126: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7735352534559001595, ; 127: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 131
	i64 7820441508502274321, ; 128: System.Data => 0x6c87ca1e14ff8111 => 138
	i64 7821246742157274664, ; 129: Xamarin.Android.Support.AsyncLayoutInflater => 0x6c8aa67926f72e28 => 36
	i64 7836164640616011524, ; 130: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 69
	i64 7879037620440914030, ; 131: Xamarin.Android.Support.v7.AppCompat.dll => 0x6d57f6f88a51d86e => 57
	i64 8003488281596490781, ; 132: Xamarin.Android.Support.v7.MediaRouter => 0x6f121a30148f741d => 59
	i64 8044118961405839122, ; 133: System.ComponentModel.Composition => 0x6fa2739369944712 => 143
	i64 8083354569033831015, ; 134: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 92
	i64 8101777744205214367, ; 135: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 35
	i64 8103644804370223335, ; 136: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 140
	i64 8167236081217502503, ; 137: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 5
	i64 8187640529827139739, ; 138: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 134
	i64 8196541262927413903, ; 139: Xamarin.Android.Support.Interpolator => 0x71bff6d9fb9ec28f => 48
	i64 8385935383968044654, ; 140: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 32
	i64 8398329775253868912, ; 141: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 78
	i64 8400357532724379117, ; 142: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 105
	i64 8513049764906961545, ; 143: SteelStrickers.dll => 0x76246da838808a89 => 10
	i64 8517710342570482946, ; 144: Syncfusion.Buttons.XForms.Android => 0x7634fc6d84959d02 => 11
	i64 8601935802264776013, ; 145: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 116
	i64 8626175481042262068, ; 146: Java.Interop => 0x77b654e585b55834 => 5
	i64 8639588376636138208, ; 147: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 104
	i64 8684531736582871431, ; 148: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 142
	i64 8808820144457481518, ; 149: Xamarin.Android.Support.Loader.dll => 0x7a3f374010b17d2e => 49
	i64 8853378295825400934, ; 150: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 130
	i64 8917102979740339192, ; 151: Xamarin.Android.Support.DocumentFile.dll => 0x7bbfe9ea4d000bf8 => 45
	i64 8951477988056063522, ; 152: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 109
	i64 8974768617058262486, ; 153: Xamarin.AndroidX.MediaRouter.dll => 0x7c8cc881c114ddd6 => 101
	i64 9312692141327339315, ; 154: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 121
	i64 9324707631942237306, ; 155: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 70
	i64 9333622604549974151, ; 156: SteelStrickers => 0x8187b04ea3c1e887 => 10
	i64 9475595603812259686, ; 157: Xamarin.Android.Support.Design => 0x838013ff707b9766 => 44
	i64 9662334977499516867, ; 158: System.Numerics.dll => 0x8617827802b0cfc3 => 22
	i64 9678050649315576968, ; 159: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 80
	i64 9711637524876806384, ; 160: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 100
	i64 9808709177481450983, ; 161: Mono.Android.dll => 0x881f890734e555e7 => 6
	i64 9825649861376906464, ; 162: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 77
	i64 9834056768316610435, ; 163: System.Transactions.dll => 0x8879968718899783 => 139
	i64 9866412715007501892, ; 164: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 29
	i64 9998632235833408227, ; 165: Mono.Security => 0x8ac2470b209ebae3 => 145
	i64 10038780035334861115, ; 166: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10226222362177979215, ; 167: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 132
	i64 10229024438826829339, ; 168: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 83
	i64 10303855825347935641, ; 169: Xamarin.Android.Support.Loader => 0x8efea647eeb3fd99 => 49
	i64 10321854143672141184, ; 170: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 129
	i64 10363495123250631811, ; 171: Xamarin.Android.Support.Collections.dll => 0x8fd287e80cd8d483 => 37
	i64 10376576884623852283, ; 172: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 115
	i64 10406448008575299332, ; 173: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 135
	i64 10430153318873392755, ; 174: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 81
	i64 10635644668885628703, ; 175: Xamarin.Android.Support.DrawerLayout.dll => 0x93996679ee34771f => 46
	i64 10847732767863316357, ; 176: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 71
	i64 10850923258212604222, ; 177: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 32
	i64 10878511855281532577, ; 178: Syncfusion.Cards.XForms.Android.dll => 0x96f83ce542ee6ea1 => 13
	i64 11019817191295005410, ; 179: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 68
	i64 11023048688141570732, ; 180: System.Core => 0x98f9bc61168392ac => 20
	i64 11037814507248023548, ; 181: System.Xml => 0x992e31d0412bf7fc => 25
	i64 11162124722117608902, ; 182: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 120
	i64 11340910727871153756, ; 183: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 82
	i64 11376461258732682436, ; 184: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 38
	i64 11392833485892708388, ; 185: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 108
	i64 11395105072750394936, ; 186: Xamarin.Android.Support.v7.CardView => 0x9e238bb09789fe38 => 58
	i64 11529969570048099689, ; 187: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 120
	i64 11578238080964724296, ; 188: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 91
	i64 11580057168383206117, ; 189: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 66
	i64 11591352189662810718, ; 190: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 113
	i64 11597940890313164233, ; 191: netstandard => 0xa0f429ca8d1805c9 => 137
	i64 11672361001936329215, ; 192: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 88
	i64 11724931932191659106, ; 193: Xamarin.AndroidX.Palette => 0xa2b7537891eb1462 => 106
	i64 11834399401546345650, ; 194: Xamarin.Android.Support.SlidingPaneLayout.dll => 0xa43c3b8deb43ecb2 => 53
	i64 11865714326292153359, ; 195: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa4ab7c5000e8440f => 31
	i64 11866610289935986454, ; 196: Xamarin.Android.Support.v7.Palette.dll => 0xa4aeab2fcba12f16 => 60
	i64 12137774235383566651, ; 197: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 118
	i64 12388767885335911387, ; 198: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0xabedbec0d236dbdb => 31
	i64 12414299427252656003, ; 199: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 38
	i64 12451044538927396471, ; 200: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 87
	i64 12466513435562512481, ; 201: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 98
	i64 12487638416075308985, ; 202: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 84
	i64 12538491095302438457, ; 203: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 75
	i64 12550732019250633519, ; 204: System.IO.Compression => 0xae2d28465e8e1b2f => 141
	i64 12559163541709922900, ; 205: Xamarin.Android.Support.v7.CardView.dll => 0xae4b1cb32ba82254 => 58
	i64 12700543734426720211, ; 206: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 76
	i64 12828192437253469131, ; 207: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 133
	i64 12952608645614506925, ; 208: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 41
	i64 12963446364377008305, ; 209: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 1
	i64 13358059602087096138, ; 210: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 47
	i64 13370592475155966277, ; 211: System.Runtime.Serialization => 0xb98de304062ea945 => 3
	i64 13391361154981494717, ; 212: Syncfusion.Buttons.XForms.Android.dll => 0xb9d7ac051da2ffbd => 11
	i64 13401370062847626945, ; 213: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 118
	i64 13404347523447273790, ; 214: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 78
	i64 13454009404024712428, ; 215: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 128
	i64 13465488254036897740, ; 216: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 131
	i64 13491513212026656886, ; 217: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 72
	i64 13572454107664307259, ; 218: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 110
	i64 13622732128915678507, ; 219: Syncfusion.Core.XForms.Android => 0xbd0daab1e651e52b => 15
	i64 13647894001087880694, ; 220: System.Data.dll => 0xbd670f48cb071df6 => 138
	i64 13828521679616088467, ; 221: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 130
	i64 13959074834287824816, ; 222: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 87
	i64 13967638549803255703, ; 223: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 124
	i64 13970307180132182141, ; 224: Syncfusion.Licensing => 0xc1e0805ccade287d => 17
	i64 14124974489674258913, ; 225: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 75
	i64 14172845254133543601, ; 226: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 102
	i64 14261073672896646636, ; 227: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 108
	i64 14369828458497533121, ; 228: Xamarin.Android.Support.Vector.Drawable => 0xc76be2d9300b64c1 => 62
	i64 14400856865250966808, ; 229: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 40
	i64 14451964210230602902, ; 230: Syncfusion.Cards.XForms.Android => 0xc88fb0e121742c96 => 13
	i64 14486659737292545672, ; 231: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 94
	i64 14538127318538747197, ; 232: Syncfusion.Licensing.dll => 0xc9c1cdc518e77d3d => 17
	i64 14644440854989303794, ; 233: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 99
	i64 14661790646341542033, ; 234: Xamarin.Android.Support.SwipeRefreshLayout => 0xcb7924e94e552091 => 54
	i64 14792063746108907174, ; 235: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 128
	i64 14852515768018889994, ; 236: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 82
	i64 14987728460634540364, ; 237: System.IO.Compression.dll => 0xcfff1ba06622494c => 141
	i64 14988210264188246988, ; 238: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 84
	i64 15150743910298169673, ; 239: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 109
	i64 15188640517174936311, ; 240: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 27
	i64 15246441518555807158, ; 241: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 27
	i64 15279429628684179188, ; 242: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 134
	i64 15326820765897713587, ; 243: Xamarin.Android.Arch.Core.Runtime.dll => 0xd4b3ce481769e7b3 => 28
	i64 15370334346939861994, ; 244: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 81
	i64 15418891414777631748, ; 245: Xamarin.Android.Support.Transition => 0xd5fae80c88241404 => 55
	i64 15457813392950723921, ; 246: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 51
	i64 15568534730848034786, ; 247: Xamarin.Android.Support.VersionedParcelable.dll => 0xd80e8bda21875fe2 => 63
	i64 15582737692548360875, ; 248: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 97
	i64 15609085926864131306, ; 249: System.dll => 0xd89e9cf3334914ea => 21
	i64 15777549416145007739, ; 250: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 112
	i64 15810740023422282496, ; 251: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 126
	i64 16154507427712707110, ; 252: System => 0xe03056ea4e39aa26 => 21
	i64 16242842420508142678, ; 253: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe16a2b1f8908ac56 => 39
	i64 16423015068819898779, ; 254: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 133
	i64 16565028646146589191, ; 255: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 143
	i64 16621146507174665210, ; 256: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 79
	i64 16677317093839702854, ; 257: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 105
	i64 16767985610513713374, ; 258: Xamarin.Android.Arch.Core.Runtime => 0xe8b3da12798808de => 28
	i64 16822611501064131242, ; 259: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 140
	i64 16833383113903931215, ; 260: mscorlib => 0xe99c30c1484d7f4f => 7
	i64 16902975927920026304, ; 261: SteelStrickers.Android.dll => 0xea936f0cf6a6e2c0 => 0
	i64 16932527889823454152, ; 262: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 41
	i64 17009591894298689098, ; 263: Xamarin.Android.Support.Animated.Vector.Drawable => 0xec0e35b50a097e4a => 34
	i64 17024911836938395553, ; 264: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 67
	i64 17031351772568316411, ; 265: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 103
	i64 17037200463775726619, ; 266: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 90
	i64 17285063141349522879, ; 267: Rg.Plugins.Popup => 0xefe0e158cc55fdbf => 9
	i64 17342427504449389352, ; 268: Syncfusion.SfCarousel.XForms => 0xf0acadee61ab8328 => 19
	i64 17383232329670771222, ; 269: Xamarin.Android.Support.CustomView.dll => 0xf13da5b41a1cc216 => 43
	i64 17428701562824544279, ; 270: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 40
	i64 17483646997724851973, ; 271: Xamarin.Android.Support.ViewPager => 0xf2a2644fe5b6ef05 => 64
	i64 17524135665394030571, ; 272: Xamarin.Android.Support.Print => 0xf3323c8a739097eb => 52
	i64 17544493274320527064, ; 273: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 73
	i64 17666959971718154066, ; 274: Xamarin.Android.Support.CustomView => 0xf52da67d9f4e4752 => 43
	i64 17704177640604968747, ; 275: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 98
	i64 17710060891934109755, ; 276: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 96
	i64 17760961058993581169, ; 277: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 29
	i64 17841643939744178149, ; 278: Xamarin.Android.Arch.Lifecycle.ViewModel => 0xf79a40a25573dfe5 => 33
	i64 17882897186074144999, ; 279: FormsViewGroup => 0xf82cd03e3ac830e7 => 4
	i64 17891337867145587222, ; 280: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 129
	i64 17892495832318972303, ; 281: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 126
	i64 17928294245072900555, ; 282: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 142
	i64 17936749993673010118, ; 283: Xamarin.Android.Support.Design.dll => 0xf8ec231615deabc6 => 44
	i64 17958105683855786126, ; 284: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xf93801f92d25c08e => 30
	i64 18090425465832348288, ; 285: Xamarin.Android.Support.v7.RecyclerView => 0xfb0e1a1d2e9e1a80 => 61
	i64 18116111925905154859, ; 286: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 72
	i64 18121036031235206392, ; 287: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 103
	i64 18129453464017766560, ; 288: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 136
	i64 18301997741680159453, ; 289: Xamarin.Android.Support.CursorAdapter => 0xfdfdc1fa58d8eadd => 42
	i64 18305135509493619199, ; 290: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 104
	i64 18380184030268848184 ; 291: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 119
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [292 x i32] [
	i32 86, i32 12, i32 6, i32 76, i32 14, i32 111, i32 9, i32 112, ; 0..7
	i32 101, i32 33, i32 95, i32 1, i32 89, i32 37, i32 30, i32 85, ; 8..15
	i32 139, i32 125, i32 145, i32 127, i32 71, i32 47, i32 3, i32 63, ; 16..23
	i32 69, i32 97, i32 90, i32 8, i32 57, i32 70, i32 111, i32 61, ; 24..31
	i32 66, i32 56, i32 96, i32 132, i32 16, i32 8, i32 102, i32 18, ; 32..39
	i32 74, i32 85, i32 144, i32 93, i32 15, i32 80, i32 117, i32 24, ; 40..47
	i32 0, i32 65, i32 25, i32 7, i32 107, i32 113, i32 53, i32 123, ; 48..55
	i32 46, i32 127, i32 51, i32 92, i32 67, i32 23, i32 135, i32 115, ; 56..63
	i32 114, i32 22, i32 24, i32 19, i32 137, i32 110, i32 86, i32 12, ; 64..71
	i32 64, i32 55, i32 45, i32 36, i32 136, i32 119, i32 73, i32 65, ; 72..79
	i32 114, i32 39, i32 50, i32 124, i32 52, i32 122, i32 99, i32 48, ; 80..87
	i32 100, i32 117, i32 116, i32 34, i32 79, i32 20, i32 106, i32 68, ; 88..95
	i32 121, i32 77, i32 35, i32 107, i32 94, i32 54, i32 125, i32 4, ; 96..103
	i32 50, i32 95, i32 93, i32 62, i32 18, i32 60, i32 74, i32 83, ; 104..111
	i32 56, i32 144, i32 89, i32 26, i32 14, i32 23, i32 16, i32 91, ; 112..119
	i32 88, i32 59, i32 42, i32 26, i32 123, i32 122, i32 2, i32 131, ; 120..127
	i32 138, i32 36, i32 69, i32 57, i32 59, i32 143, i32 92, i32 35, ; 128..135
	i32 140, i32 5, i32 134, i32 48, i32 32, i32 78, i32 105, i32 10, ; 136..143
	i32 11, i32 116, i32 5, i32 104, i32 142, i32 49, i32 130, i32 45, ; 144..151
	i32 109, i32 101, i32 121, i32 70, i32 10, i32 44, i32 22, i32 80, ; 152..159
	i32 100, i32 6, i32 77, i32 139, i32 29, i32 145, i32 2, i32 132, ; 160..167
	i32 83, i32 49, i32 129, i32 37, i32 115, i32 135, i32 81, i32 46, ; 168..175
	i32 71, i32 32, i32 13, i32 68, i32 20, i32 25, i32 120, i32 82, ; 176..183
	i32 38, i32 108, i32 58, i32 120, i32 91, i32 66, i32 113, i32 137, ; 184..191
	i32 88, i32 106, i32 53, i32 31, i32 60, i32 118, i32 31, i32 38, ; 192..199
	i32 87, i32 98, i32 84, i32 75, i32 141, i32 58, i32 76, i32 133, ; 200..207
	i32 41, i32 1, i32 47, i32 3, i32 11, i32 118, i32 78, i32 128, ; 208..215
	i32 131, i32 72, i32 110, i32 15, i32 138, i32 130, i32 87, i32 124, ; 216..223
	i32 17, i32 75, i32 102, i32 108, i32 62, i32 40, i32 13, i32 94, ; 224..231
	i32 17, i32 99, i32 54, i32 128, i32 82, i32 141, i32 84, i32 109, ; 232..239
	i32 27, i32 27, i32 134, i32 28, i32 81, i32 55, i32 51, i32 63, ; 240..247
	i32 97, i32 21, i32 112, i32 126, i32 21, i32 39, i32 133, i32 143, ; 248..255
	i32 79, i32 105, i32 28, i32 140, i32 7, i32 0, i32 41, i32 34, ; 256..263
	i32 67, i32 103, i32 90, i32 9, i32 19, i32 43, i32 40, i32 64, ; 264..271
	i32 52, i32 73, i32 43, i32 98, i32 96, i32 29, i32 33, i32 4, ; 272..279
	i32 129, i32 126, i32 142, i32 44, i32 30, i32 61, i32 72, i32 103, ; 280..287
	i32 136, i32 42, i32 104, i32 119 ; 288..291
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

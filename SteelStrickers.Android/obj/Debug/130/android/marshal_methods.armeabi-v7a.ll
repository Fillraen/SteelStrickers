; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [292 x i32] [
	i32 5009434, ; 0: Syncfusion.Cards.XForms.Android => 0x4c701a => 13
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 95
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 128
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 8
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 123
	i32 57967248, ; 5: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 63
	i32 99762151, ; 6: Syncfusion.Buttons.XForms.dll => 0x5f23fe7 => 12
	i32 101534019, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 112
	i32 120558881, ; 8: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 112
	i32 134690465, ; 9: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 132
	i32 160529393, ; 10: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 27
	i32 165246403, ; 11: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 76
	i32 166922606, ; 12: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 38
	i32 182336117, ; 13: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 114
	i32 201930040, ; 14: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 28
	i32 209399409, ; 15: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 74
	i32 219130465, ; 16: Xamarin.Android.Support.v4 => 0xd0faa61 => 56
	i32 230216969, ; 17: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 90
	i32 232587938, ; 18: Xamarin.AndroidX.MediaRouter => 0xddd02a2 => 101
	i32 232815796, ; 19: System.Web.Services => 0xde07cb4 => 144
	i32 261689757, ; 20: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 79
	i32 278686392, ; 21: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 94
	i32 280482487, ; 22: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 88
	i32 293914992, ; 23: Xamarin.Android.Support.Transition => 0x1184c970 => 55
	i32 318968648, ; 24: Xamarin.AndroidX.Activity.dll => 0x13031348 => 65
	i32 321597661, ; 25: System.Numerics => 0x132b30dd => 22
	i32 331266987, ; 26: Xamarin.Android.Support.v7.MediaRouter.dll => 0x13bebbab => 59
	i32 342366114, ; 27: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 92
	i32 388313361, ; 28: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 34
	i32 389971796, ; 29: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 40
	i32 441335492, ; 30: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 78
	i32 442521989, ; 31: Xamarin.Essentials => 0x1a605985 => 122
	i32 450948140, ; 32: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 87
	i32 465846621, ; 33: mscorlib => 0x1bc4415d => 7
	i32 469710990, ; 34: System.dll => 0x1bff388e => 21
	i32 476646585, ; 35: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 88
	i32 486930444, ; 36: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 99
	i32 514659665, ; 37: Xamarin.Android.Support.Compat => 0x1ead1551 => 38
	i32 524864063, ; 38: Xamarin.Android.Support.Print => 0x1f48ca3f => 52
	i32 526420162, ; 39: System.Transactions.dll => 0x1f6088c2 => 139
	i32 527452488, ; 40: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 132
	i32 539750087, ; 41: Xamarin.Android.Support.Design => 0x202beec7 => 44
	i32 571524804, ; 42: Xamarin.Android.Support.v7.RecyclerView => 0x2210c6c4 => 61
	i32 605376203, ; 43: System.IO.Compression.FileSystem => 0x24154ecb => 142
	i32 627609679, ; 44: Xamarin.AndroidX.CustomView => 0x2568904f => 83
	i32 663517072, ; 45: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 119
	i32 666292255, ; 46: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 71
	i32 690569205, ; 47: System.Xml.Linq.dll => 0x29293ff5 => 26
	i32 691348768, ; 48: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 134
	i32 692692150, ; 49: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 35
	i32 700284507, ; 50: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 129
	i32 707987836, ; 51: Syncfusion.Cards.XForms.dll => 0x2a33097c => 14
	i32 719061231, ; 52: Syncfusion.Core.XForms.dll => 0x2adc00ef => 16
	i32 720511267, ; 53: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 133
	i32 775507847, ; 54: System.IO.Compression => 0x2e394f87 => 141
	i32 801787702, ; 55: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 48
	i32 809851609, ; 56: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 843511501, ; 57: Xamarin.AndroidX.Print => 0x3246f6cd => 108
	i32 882883187, ; 58: Xamarin.Android.Support.v4.dll => 0x349fba73 => 56
	i32 902159924, ; 59: Rg.Plugins.Popup => 0x35c5de34 => 9
	i32 916714535, ; 60: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 52
	i32 928116545, ; 61: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 128
	i32 955402788, ; 62: Newtonsoft.Json => 0x38f24a24 => 8
	i32 956575887, ; 63: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 133
	i32 958213972, ; 64: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 51
	i32 967690846, ; 65: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 92
	i32 974778368, ; 66: FormsViewGroup.dll => 0x3a19f000 => 4
	i32 987342438, ; 67: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 31
	i32 993064525, ; 68: Syncfusion.SfCarousel.XForms.Android => 0x3b30f64d => 18
	i32 1012816738, ; 69: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 111
	i32 1035644815, ; 70: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 70
	i32 1042160112, ; 71: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 125
	i32 1052210849, ; 72: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 96
	i32 1084122840, ; 73: Xamarin.Kotlin.StdLib => 0x409e66d8 => 131
	i32 1098167829, ; 74: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 33
	i32 1098259244, ; 75: System => 0x41761b2c => 21
	i32 1175144683, ; 76: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 117
	i32 1178241025, ; 77: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 104
	i32 1204270330, ; 78: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 71
	i32 1264511973, ; 79: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 113
	i32 1267360935, ; 80: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 118
	i32 1275534314, ; 81: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 134
	i32 1278448581, ; 82: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 68
	i32 1292763917, ; 83: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 42
	i32 1293217323, ; 84: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 85
	i32 1297413738, ; 85: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 30
	i32 1359785034, ; 86: Xamarin.Android.Support.Design.dll => 0x510cac4a => 44
	i32 1365406463, ; 87: System.ServiceModel.Internals.dll => 0x516272ff => 136
	i32 1376866003, ; 88: Xamarin.AndroidX.SavedState => 0x52114ed3 => 111
	i32 1395857551, ; 89: Xamarin.AndroidX.Media.dll => 0x5333188f => 100
	i32 1406073936, ; 90: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 80
	i32 1445445088, ; 91: Xamarin.Android.Support.Fragment => 0x5627bde0 => 47
	i32 1460219004, ; 92: Xamarin.Forms.Xaml => 0x57092c7c => 126
	i32 1462112819, ; 93: System.IO.Compression.dll => 0x57261233 => 141
	i32 1469204771, ; 94: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 69
	i32 1486716862, ; 95: Syncfusion.Cards.XForms => 0x589d7fbe => 14
	i32 1516315406, ; 96: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 15
	i32 1574652163, ; 97: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 41
	i32 1582372066, ; 98: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 84
	i32 1587447679, ; 99: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 27
	i32 1592978981, ; 100: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 101: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 98
	i32 1624863272, ; 102: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 121
	i32 1636350590, ; 103: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 82
	i32 1639515021, ; 104: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 105: System.Runtime => 0x62c6282e => 24
	i32 1658241508, ; 106: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 115
	i32 1658251792, ; 107: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 127
	i32 1662014763, ; 108: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 62
	i32 1670060433, ; 109: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 79
	i32 1698840827, ; 110: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 130
	i32 1729485958, ; 111: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 75
	i32 1766324549, ; 112: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 114
	i32 1776026572, ; 113: System.Core.dll => 0x69dc03cc => 20
	i32 1788241197, ; 114: Xamarin.AndroidX.Fragment => 0x6a96652d => 87
	i32 1808609942, ; 115: Xamarin.AndroidX.Loader => 0x6bcd3296 => 98
	i32 1813058853, ; 116: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 131
	i32 1813201214, ; 117: Xamarin.Google.Android.Material => 0x6c13413e => 127
	i32 1818569960, ; 118: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 105
	i32 1866717392, ; 119: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 48
	i32 1867746548, ; 120: Xamarin.Essentials.dll => 0x6f538cf4 => 122
	i32 1877418711, ; 121: Xamarin.Android.Support.v7.RecyclerView.dll => 0x6fe722d7 => 61
	i32 1878053835, ; 122: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 126
	i32 1885316902, ; 123: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 72
	i32 1916660109, ; 124: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 33
	i32 1919157823, ; 125: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 102
	i32 1969191170, ; 126: Syncfusion.SfCarousel.XForms.dll => 0x755f7902 => 19
	i32 1983156543, ; 127: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 130
	i32 2019465201, ; 128: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 96
	i32 2037417872, ; 129: Xamarin.Android.Support.ViewPager => 0x79708790 => 64
	i32 2044222327, ; 130: Xamarin.Android.Support.Loader => 0x79d85b77 => 49
	i32 2055257422, ; 131: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 93
	i32 2071563619, ; 132: Syncfusion.Buttons.XForms.Android => 0x7b798d63 => 11
	i32 2079903147, ; 133: System.Runtime.dll => 0x7bf8cdab => 24
	i32 2090596640, ; 134: System.Numerics.Vectors => 0x7c9bf920 => 23
	i32 2097448633, ; 135: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 89
	i32 2126786730, ; 136: Xamarin.Forms.Platform.Android => 0x7ec430aa => 124
	i32 2139458754, ; 137: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 46
	i32 2166116741, ; 138: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 41
	i32 2196165013, ; 139: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 63
	i32 2201107256, ; 140: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 135
	i32 2201231467, ; 141: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 142: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 117
	i32 2234081415, ; 143: SteelStrickers.dll => 0x85296087 => 10
	i32 2244775296, ; 144: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 99
	i32 2256548716, ; 145: Xamarin.AndroidX.MultiDex => 0x8680336c => 102
	i32 2261435625, ; 146: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 91
	i32 2269504559, ; 147: SteelStrickers.Android.dll => 0x8745e42f => 0
	i32 2279755925, ; 148: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 110
	i32 2315684594, ; 149: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 66
	i32 2330457430, ; 150: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 40
	i32 2330986192, ; 151: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 53
	i32 2343171156, ; 152: Syncfusion.Core.XForms => 0x8ba9f454 => 16
	i32 2354730003, ; 153: Syncfusion.Licensing => 0x8c5a5413 => 17
	i32 2373288475, ; 154: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 47
	i32 2409053734, ; 155: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 107
	i32 2440966767, ; 156: Xamarin.Android.Support.Loader.dll => 0x917e326f => 49
	i32 2465532216, ; 157: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 78
	i32 2471841756, ; 158: netstandard.dll => 0x93554fdc => 137
	i32 2475788418, ; 159: Java.Interop.dll => 0x93918882 => 5
	i32 2487632829, ; 160: Xamarin.Android.Support.DocumentFile => 0x944643bd => 45
	i32 2501346920, ; 161: System.Data.DataSetExtensions => 0x95178668 => 140
	i32 2505896520, ; 162: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 95
	i32 2508407795, ; 163: Syncfusion.SfCarousel.XForms.Android.dll => 0x958343f3 => 18
	i32 2581819634, ; 164: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 118
	i32 2605712449, ; 165: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 135
	i32 2620871830, ; 166: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 82
	i32 2624644809, ; 167: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 86
	i32 2633051222, ; 168: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 94
	i32 2635300604, ; 169: Syncfusion.Buttons.XForms => 0x9d137efc => 12
	i32 2691162529, ; 170: SteelStrickers.Android => 0xa067e1a1 => 0
	i32 2698266930, ; 171: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 31
	i32 2701096212, ; 172: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 115
	i32 2732626843, ; 173: Xamarin.AndroidX.Activity => 0xa2e0939b => 65
	i32 2737747696, ; 174: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 69
	i32 2751899777, ; 175: Xamarin.Android.Support.Collections => 0xa406a881 => 37
	i32 2754271178, ; 176: Xamarin.Android.Support.v7.Palette => 0xa42ad7ca => 60
	i32 2766581644, ; 177: Xamarin.Forms.Core => 0xa4e6af8c => 123
	i32 2770495804, ; 178: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 129
	i32 2772484381, ; 179: Xamarin.AndroidX.Palette.dll => 0xa540c11d => 106
	i32 2778768386, ; 180: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 120
	i32 2788639665, ; 181: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 50
	i32 2788775637, ; 182: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 54
	i32 2810250172, ; 183: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 80
	i32 2819470561, ; 184: System.Xml.dll => 0xa80db4e1 => 25
	i32 2853208004, ; 185: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 120
	i32 2855708567, ; 186: Xamarin.AndroidX.Transition => 0xaa36a797 => 116
	i32 2861816565, ; 187: Rg.Plugins.Popup.dll => 0xaa93daf5 => 9
	i32 2868557005, ; 188: Syncfusion.Licensing.dll => 0xaafab4cd => 17
	i32 2874148507, ; 189: Syncfusion.Core.XForms.Android => 0xab50069b => 15
	i32 2876493027, ; 190: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 54
	i32 2893257763, ; 191: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 28
	i32 2903344695, ; 192: System.ComponentModel.Composition => 0xad0d8637 => 143
	i32 2905242038, ; 193: mscorlib.dll => 0xad2a79b6 => 7
	i32 2916838712, ; 194: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 121
	i32 2919462931, ; 195: System.Numerics.Vectors.dll => 0xae037813 => 23
	i32 2921128767, ; 196: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 67
	i32 2921692953, ; 197: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 43
	i32 2922925221, ; 198: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 62
	i32 2978675010, ; 199: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 85
	i32 3016983068, ; 200: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 113
	i32 3024354802, ; 201: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 90
	i32 3044182254, ; 202: FormsViewGroup => 0xb57288ee => 4
	i32 3056250942, ; 203: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 36
	i32 3057625584, ; 204: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 103
	i32 3068715062, ; 205: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 29
	i32 3092211740, ; 206: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 51
	i32 3111772706, ; 207: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3194035187, ; 208: Xamarin.Android.Support.v7.MediaRouter => 0xbe611bf3 => 59
	i32 3204380047, ; 209: System.Data.dll => 0xbefef58f => 138
	i32 3204912593, ; 210: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 36
	i32 3211777861, ; 211: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 84
	i32 3233339011, ; 212: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 30
	i32 3247949154, ; 213: Mono.Security => 0xc197c562 => 145
	i32 3258312781, ; 214: Xamarin.AndroidX.CardView => 0xc235e84d => 75
	i32 3267021929, ; 215: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 73
	i32 3296380511, ; 216: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 37
	i32 3317135071, ; 217: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 83
	i32 3317144872, ; 218: System.Data => 0xc5b79d28 => 138
	i32 3321585405, ; 219: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 45
	i32 3340431453, ; 220: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 72
	i32 3345895724, ; 221: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 109
	i32 3346324047, ; 222: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 104
	i32 3352662376, ; 223: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 39
	i32 3353484488, ; 224: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 89
	i32 3357663996, ; 225: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 42
	i32 3362522851, ; 226: Xamarin.AndroidX.Core => 0xc86c06e3 => 81
	i32 3366347497, ; 227: Java.Interop => 0xc8a662e9 => 5
	i32 3369739654, ; 228: Xamarin.AndroidX.Palette => 0xc8da2586 => 106
	i32 3374999561, ; 229: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 110
	i32 3404865022, ; 230: System.ServiceModel.Internals => 0xcaf21dfe => 136
	i32 3429136800, ; 231: System.Xml => 0xcc6479a0 => 25
	i32 3430777524, ; 232: netstandard => 0xcc7d82b4 => 137
	i32 3434749838, ; 233: Syncfusion.Buttons.XForms.Android.dll => 0xccba1f8e => 11
	i32 3439690031, ; 234: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 35
	i32 3441283291, ; 235: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 86
	i32 3476120550, ; 236: Mono.Android => 0xcf3163e6 => 6
	i32 3486566296, ; 237: System.Transactions => 0xcfd0c798 => 139
	i32 3493954962, ; 238: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 77
	i32 3498942916, ; 239: Xamarin.Android.Support.v7.CardView.dll => 0xd08da1c4 => 58
	i32 3501239056, ; 240: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 73
	i32 3509114376, ; 241: System.Xml.Linq => 0xd128d608 => 26
	i32 3536029504, ; 242: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 124
	i32 3547625832, ; 243: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 53
	i32 3567349600, ; 244: System.ComponentModel.Composition.dll => 0xd4a16f60 => 143
	i32 3618140916, ; 245: Xamarin.AndroidX.Preference => 0xd7a872f4 => 107
	i32 3627220390, ; 246: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 108
	i32 3629053394, ; 247: Xamarin.AndroidX.MediaRouter.dll => 0xd84ef5d2 => 101
	i32 3632359727, ; 248: Xamarin.Forms.Platform => 0xd881692f => 125
	i32 3633644679, ; 249: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 67
	i32 3641597786, ; 250: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 93
	i32 3664423555, ; 251: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 64
	i32 3672376724, ; 252: SteelStrickers => 0xdae40594 => 10
	i32 3672681054, ; 253: Mono.Android.dll => 0xdae8aa5e => 6
	i32 3676310014, ; 254: System.Web.Services.dll => 0xdb2009fe => 144
	i32 3678221644, ; 255: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 57
	i32 3681174138, ; 256: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 29
	i32 3682565725, ; 257: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 74
	i32 3684561358, ; 258: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 77
	i32 3689375977, ; 259: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3714038699, ; 260: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 50
	i32 3718463572, ; 261: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 34
	i32 3718780102, ; 262: Xamarin.AndroidX.Annotation => 0xdda814c6 => 66
	i32 3724971120, ; 263: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 103
	i32 3758932259, ; 264: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 91
	i32 3759042612, ; 265: Syncfusion.SfCarousel.XForms => 0xe00e7034 => 19
	i32 3776062606, ; 266: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 46
	i32 3786282454, ; 267: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 76
	i32 3789524022, ; 268: Xamarin.Android.Support.v7.Palette.dll => 0xe1df8c36 => 60
	i32 3822602673, ; 269: Xamarin.AndroidX.Media => 0xe3d849b1 => 100
	i32 3829621856, ; 270: System.Numerics.dll => 0xe4436460 => 22
	i32 3832731800, ; 271: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 39
	i32 3862817207, ; 272: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 32
	i32 3874897629, ; 273: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 32
	i32 3883175360, ; 274: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 57
	i32 3885922214, ; 275: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 116
	i32 3888767677, ; 276: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 109
	i32 3896760992, ; 277: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 81
	i32 3920810846, ; 278: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 142
	i32 3921031405, ; 279: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 119
	i32 3929079551, ; 280: Syncfusion.Cards.XForms.Android.dll => 0xea30feff => 13
	i32 3931092270, ; 281: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 105
	i32 3945713374, ; 282: System.Data.DataSetExtensions.dll => 0xeb2ecede => 140
	i32 3955647286, ; 283: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 70
	i32 4015948917, ; 284: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 68
	i32 4063435586, ; 285: Xamarin.Android.Support.CustomView => 0xf2331b42 => 43
	i32 4105002889, ; 286: Mono.Security.dll => 0xf4ad5f89 => 145
	i32 4151237749, ; 287: System.Core => 0xf76edc75 => 20
	i32 4182413190, ; 288: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 97
	i32 4216993138, ; 289: Xamarin.Android.Support.Transition.dll => 0xfb5a3572 => 55
	i32 4219003402, ; 290: Xamarin.Android.Support.v7.CardView => 0xfb78e20a => 58
	i32 4292120959 ; 291: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 97
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [292 x i32] [
	i32 13, i32 95, i32 128, i32 8, i32 123, i32 63, i32 12, i32 112, ; 0..7
	i32 112, i32 132, i32 27, i32 76, i32 38, i32 114, i32 28, i32 74, ; 8..15
	i32 56, i32 90, i32 101, i32 144, i32 79, i32 94, i32 88, i32 55, ; 16..23
	i32 65, i32 22, i32 59, i32 92, i32 34, i32 40, i32 78, i32 122, ; 24..31
	i32 87, i32 7, i32 21, i32 88, i32 99, i32 38, i32 52, i32 139, ; 32..39
	i32 132, i32 44, i32 61, i32 142, i32 83, i32 119, i32 71, i32 26, ; 40..47
	i32 134, i32 35, i32 129, i32 14, i32 16, i32 133, i32 141, i32 48, ; 48..55
	i32 1, i32 108, i32 56, i32 9, i32 52, i32 128, i32 8, i32 133, ; 56..63
	i32 51, i32 92, i32 4, i32 31, i32 18, i32 111, i32 70, i32 125, ; 64..71
	i32 96, i32 131, i32 33, i32 21, i32 117, i32 104, i32 71, i32 113, ; 72..79
	i32 118, i32 134, i32 68, i32 42, i32 85, i32 30, i32 44, i32 136, ; 80..87
	i32 111, i32 100, i32 80, i32 47, i32 126, i32 141, i32 69, i32 14, ; 88..95
	i32 15, i32 41, i32 84, i32 27, i32 3, i32 98, i32 121, i32 82, ; 96..103
	i32 2, i32 24, i32 115, i32 127, i32 62, i32 79, i32 130, i32 75, ; 104..111
	i32 114, i32 20, i32 87, i32 98, i32 131, i32 127, i32 105, i32 48, ; 112..119
	i32 122, i32 61, i32 126, i32 72, i32 33, i32 102, i32 19, i32 130, ; 120..127
	i32 96, i32 64, i32 49, i32 93, i32 11, i32 24, i32 23, i32 89, ; 128..135
	i32 124, i32 46, i32 41, i32 63, i32 135, i32 2, i32 117, i32 10, ; 136..143
	i32 99, i32 102, i32 91, i32 0, i32 110, i32 66, i32 40, i32 53, ; 144..151
	i32 16, i32 17, i32 47, i32 107, i32 49, i32 78, i32 137, i32 5, ; 152..159
	i32 45, i32 140, i32 95, i32 18, i32 118, i32 135, i32 82, i32 86, ; 160..167
	i32 94, i32 12, i32 0, i32 31, i32 115, i32 65, i32 69, i32 37, ; 168..175
	i32 60, i32 123, i32 129, i32 106, i32 120, i32 50, i32 54, i32 80, ; 176..183
	i32 25, i32 120, i32 116, i32 9, i32 17, i32 15, i32 54, i32 28, ; 184..191
	i32 143, i32 7, i32 121, i32 23, i32 67, i32 43, i32 62, i32 85, ; 192..199
	i32 113, i32 90, i32 4, i32 36, i32 103, i32 29, i32 51, i32 3, ; 200..207
	i32 59, i32 138, i32 36, i32 84, i32 30, i32 145, i32 75, i32 73, ; 208..215
	i32 37, i32 83, i32 138, i32 45, i32 72, i32 109, i32 104, i32 39, ; 216..223
	i32 89, i32 42, i32 81, i32 5, i32 106, i32 110, i32 136, i32 25, ; 224..231
	i32 137, i32 11, i32 35, i32 86, i32 6, i32 139, i32 77, i32 58, ; 232..239
	i32 73, i32 26, i32 124, i32 53, i32 143, i32 107, i32 108, i32 101, ; 240..247
	i32 125, i32 67, i32 93, i32 64, i32 10, i32 6, i32 144, i32 57, ; 248..255
	i32 29, i32 74, i32 77, i32 1, i32 50, i32 34, i32 66, i32 103, ; 256..263
	i32 91, i32 19, i32 46, i32 76, i32 60, i32 100, i32 22, i32 39, ; 264..271
	i32 32, i32 32, i32 57, i32 116, i32 109, i32 81, i32 142, i32 119, ; 272..279
	i32 13, i32 105, i32 140, i32 70, i32 68, i32 43, i32 145, i32 20, ; 280..287
	i32 97, i32 55, i32 58, i32 97 ; 288..291
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

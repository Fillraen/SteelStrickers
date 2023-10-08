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
@assembly_image_cache_hashes = local_unnamed_addr constant [298 x i32] [
	i32 5009434, ; 0: Syncfusion.Cards.XForms.Android => 0x4c701a => 15
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 97
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 130
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 8
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 125
	i32 57967248, ; 5: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 65
	i32 99762151, ; 6: Syncfusion.Buttons.XForms.dll => 0x5f23fe7 => 14
	i32 101534019, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 114
	i32 120558881, ; 8: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 114
	i32 134690465, ; 9: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 134
	i32 160529393, ; 10: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 29
	i32 165246403, ; 11: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 78
	i32 166922606, ; 12: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 40
	i32 182336117, ; 13: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 116
	i32 201930040, ; 14: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 30
	i32 209399409, ; 15: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 76
	i32 219130465, ; 16: Xamarin.Android.Support.v4 => 0xd0faa61 => 58
	i32 230216969, ; 17: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 92
	i32 232587938, ; 18: Xamarin.AndroidX.MediaRouter => 0xddd02a2 => 103
	i32 232815796, ; 19: System.Web.Services => 0xde07cb4 => 146
	i32 261689757, ; 20: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 81
	i32 278686392, ; 21: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 96
	i32 280482487, ; 22: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 90
	i32 293914992, ; 23: Xamarin.Android.Support.Transition => 0x1184c970 => 57
	i32 318968648, ; 24: Xamarin.AndroidX.Activity.dll => 0x13031348 => 67
	i32 321597661, ; 25: System.Numerics => 0x132b30dd => 24
	i32 331266987, ; 26: Xamarin.Android.Support.v7.MediaRouter.dll => 0x13bebbab => 61
	i32 342366114, ; 27: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 94
	i32 385762202, ; 28: System.Memory.dll => 0x16fe439a => 147
	i32 388313361, ; 29: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 36
	i32 389971796, ; 30: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 42
	i32 441335492, ; 31: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 80
	i32 442521989, ; 32: Xamarin.Essentials => 0x1a605985 => 124
	i32 450948140, ; 33: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 89
	i32 465846621, ; 34: mscorlib => 0x1bc4415d => 7
	i32 469710990, ; 35: System.dll => 0x1bff388e => 23
	i32 476646585, ; 36: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 90
	i32 486930444, ; 37: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 101
	i32 514659665, ; 38: Xamarin.Android.Support.Compat => 0x1ead1551 => 40
	i32 524864063, ; 39: Xamarin.Android.Support.Print => 0x1f48ca3f => 54
	i32 526420162, ; 40: System.Transactions.dll => 0x1f6088c2 => 141
	i32 527452488, ; 41: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 134
	i32 539750087, ; 42: Xamarin.Android.Support.Design => 0x202beec7 => 46
	i32 571524804, ; 43: Xamarin.Android.Support.v7.RecyclerView => 0x2210c6c4 => 63
	i32 605376203, ; 44: System.IO.Compression.FileSystem => 0x24154ecb => 144
	i32 627609679, ; 45: Xamarin.AndroidX.CustomView => 0x2568904f => 85
	i32 663517072, ; 46: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 121
	i32 666292255, ; 47: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 73
	i32 690569205, ; 48: System.Xml.Linq.dll => 0x29293ff5 => 28
	i32 691348768, ; 49: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 136
	i32 692692150, ; 50: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 37
	i32 700284507, ; 51: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 131
	i32 707987836, ; 52: Syncfusion.Cards.XForms.dll => 0x2a33097c => 16
	i32 719061231, ; 53: Syncfusion.Core.XForms.dll => 0x2adc00ef => 18
	i32 720511267, ; 54: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 135
	i32 775507847, ; 55: System.IO.Compression => 0x2e394f87 => 143
	i32 801787702, ; 56: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 50
	i32 809851609, ; 57: System.Drawing.Common.dll => 0x30455ad9 => 1
	i32 843511501, ; 58: Xamarin.AndroidX.Print => 0x3246f6cd => 110
	i32 882883187, ; 59: Xamarin.Android.Support.v4.dll => 0x349fba73 => 58
	i32 902159924, ; 60: Rg.Plugins.Popup => 0x35c5de34 => 11
	i32 907231247, ; 61: Plugin.BluetoothClassic.Android => 0x3613400f => 10
	i32 916714535, ; 62: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 54
	i32 928116545, ; 63: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 130
	i32 955402788, ; 64: Newtonsoft.Json => 0x38f24a24 => 8
	i32 956575887, ; 65: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 135
	i32 958213972, ; 66: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 53
	i32 967690846, ; 67: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 94
	i32 974778368, ; 68: FormsViewGroup.dll => 0x3a19f000 => 4
	i32 987342438, ; 69: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 33
	i32 993064525, ; 70: Syncfusion.SfCarousel.XForms.Android => 0x3b30f64d => 20
	i32 1012816738, ; 71: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 113
	i32 1035644815, ; 72: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 72
	i32 1042160112, ; 73: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 127
	i32 1052210849, ; 74: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 98
	i32 1084122840, ; 75: Xamarin.Kotlin.StdLib => 0x409e66d8 => 133
	i32 1098167829, ; 76: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 35
	i32 1098259244, ; 77: System => 0x41761b2c => 23
	i32 1175144683, ; 78: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 119
	i32 1178241025, ; 79: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 106
	i32 1204270330, ; 80: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 73
	i32 1264511973, ; 81: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 115
	i32 1267360935, ; 82: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 120
	i32 1275534314, ; 83: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 136
	i32 1278448581, ; 84: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 70
	i32 1292763917, ; 85: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 44
	i32 1293217323, ; 86: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 87
	i32 1297413738, ; 87: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 32
	i32 1359785034, ; 88: Xamarin.Android.Support.Design.dll => 0x510cac4a => 46
	i32 1365406463, ; 89: System.ServiceModel.Internals.dll => 0x516272ff => 138
	i32 1376866003, ; 90: Xamarin.AndroidX.SavedState => 0x52114ed3 => 113
	i32 1395857551, ; 91: Xamarin.AndroidX.Media.dll => 0x5333188f => 102
	i32 1406073936, ; 92: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 82
	i32 1445445088, ; 93: Xamarin.Android.Support.Fragment => 0x5627bde0 => 49
	i32 1460219004, ; 94: Xamarin.Forms.Xaml => 0x57092c7c => 128
	i32 1462112819, ; 95: System.IO.Compression.dll => 0x57261233 => 143
	i32 1469204771, ; 96: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 71
	i32 1486716862, ; 97: Syncfusion.Cards.XForms => 0x589d7fbe => 16
	i32 1516315406, ; 98: Syncfusion.Core.XForms.Android.dll => 0x5a61230e => 17
	i32 1574652163, ; 99: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 43
	i32 1582372066, ; 100: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 86
	i32 1587447679, ; 101: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 29
	i32 1592978981, ; 102: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 103: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 100
	i32 1624863272, ; 104: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 123
	i32 1636350590, ; 105: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 84
	i32 1639515021, ; 106: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 107: System.Runtime => 0x62c6282e => 26
	i32 1658241508, ; 108: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 117
	i32 1658251792, ; 109: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 129
	i32 1662014763, ; 110: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 64
	i32 1670060433, ; 111: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 81
	i32 1698840827, ; 112: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 132
	i32 1729485958, ; 113: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 77
	i32 1766324549, ; 114: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 116
	i32 1776026572, ; 115: System.Core.dll => 0x69dc03cc => 22
	i32 1788241197, ; 116: Xamarin.AndroidX.Fragment => 0x6a96652d => 89
	i32 1808609942, ; 117: Xamarin.AndroidX.Loader => 0x6bcd3296 => 100
	i32 1813058853, ; 118: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 133
	i32 1813201214, ; 119: Xamarin.Google.Android.Material => 0x6c13413e => 129
	i32 1818569960, ; 120: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 107
	i32 1866717392, ; 121: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 50
	i32 1867746548, ; 122: Xamarin.Essentials.dll => 0x6f538cf4 => 124
	i32 1877418711, ; 123: Xamarin.Android.Support.v7.RecyclerView.dll => 0x6fe722d7 => 63
	i32 1878053835, ; 124: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 128
	i32 1885316902, ; 125: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 74
	i32 1916660109, ; 126: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 35
	i32 1919157823, ; 127: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 104
	i32 1969191170, ; 128: Syncfusion.SfCarousel.XForms.dll => 0x755f7902 => 21
	i32 1983156543, ; 129: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 132
	i32 2019465201, ; 130: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 98
	i32 2037417872, ; 131: Xamarin.Android.Support.ViewPager => 0x79708790 => 66
	i32 2044222327, ; 132: Xamarin.Android.Support.Loader => 0x79d85b77 => 51
	i32 2055257422, ; 133: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 95
	i32 2071563619, ; 134: Syncfusion.Buttons.XForms.Android => 0x7b798d63 => 13
	i32 2079903147, ; 135: System.Runtime.dll => 0x7bf8cdab => 26
	i32 2090596640, ; 136: System.Numerics.Vectors => 0x7c9bf920 => 25
	i32 2097448633, ; 137: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 91
	i32 2126786730, ; 138: Xamarin.Forms.Platform.Android => 0x7ec430aa => 126
	i32 2139458754, ; 139: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 48
	i32 2166116741, ; 140: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 43
	i32 2196165013, ; 141: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 65
	i32 2201107256, ; 142: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 137
	i32 2201231467, ; 143: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 144: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 119
	i32 2234081415, ; 145: SteelStrickers.dll => 0x85296087 => 12
	i32 2244775296, ; 146: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 101
	i32 2256548716, ; 147: Xamarin.AndroidX.MultiDex => 0x8680336c => 104
	i32 2261435625, ; 148: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 93
	i32 2269504559, ; 149: SteelStrickers.Android.dll => 0x8745e42f => 0
	i32 2279755925, ; 150: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 112
	i32 2315684594, ; 151: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 68
	i32 2330457430, ; 152: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 42
	i32 2330986192, ; 153: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 55
	i32 2343171156, ; 154: Syncfusion.Core.XForms => 0x8ba9f454 => 18
	i32 2354730003, ; 155: Syncfusion.Licensing => 0x8c5a5413 => 19
	i32 2373288475, ; 156: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 49
	i32 2409053734, ; 157: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 109
	i32 2440966767, ; 158: Xamarin.Android.Support.Loader.dll => 0x917e326f => 51
	i32 2465532216, ; 159: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 80
	i32 2471841756, ; 160: netstandard.dll => 0x93554fdc => 139
	i32 2475788418, ; 161: Java.Interop.dll => 0x93918882 => 5
	i32 2487632829, ; 162: Xamarin.Android.Support.DocumentFile => 0x944643bd => 47
	i32 2501346920, ; 163: System.Data.DataSetExtensions => 0x95178668 => 142
	i32 2505896520, ; 164: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 97
	i32 2508407795, ; 165: Syncfusion.SfCarousel.XForms.Android.dll => 0x958343f3 => 20
	i32 2581819634, ; 166: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 120
	i32 2605712449, ; 167: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 137
	i32 2620871830, ; 168: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 84
	i32 2624644809, ; 169: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 88
	i32 2633051222, ; 170: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 96
	i32 2635300604, ; 171: Syncfusion.Buttons.XForms => 0x9d137efc => 14
	i32 2691162529, ; 172: SteelStrickers.Android => 0xa067e1a1 => 0
	i32 2698266930, ; 173: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 33
	i32 2701096212, ; 174: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 117
	i32 2732434636, ; 175: Plugin.BluetoothClassic.Abstractions.dll => 0xa2dda4cc => 9
	i32 2732626843, ; 176: Xamarin.AndroidX.Activity => 0xa2e0939b => 67
	i32 2737747696, ; 177: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 71
	i32 2751899777, ; 178: Xamarin.Android.Support.Collections => 0xa406a881 => 39
	i32 2754271178, ; 179: Xamarin.Android.Support.v7.Palette => 0xa42ad7ca => 62
	i32 2766581644, ; 180: Xamarin.Forms.Core => 0xa4e6af8c => 125
	i32 2770495804, ; 181: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 131
	i32 2772484381, ; 182: Xamarin.AndroidX.Palette.dll => 0xa540c11d => 108
	i32 2778768386, ; 183: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 122
	i32 2788639665, ; 184: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 52
	i32 2788775637, ; 185: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 56
	i32 2810250172, ; 186: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 82
	i32 2819470561, ; 187: System.Xml.dll => 0xa80db4e1 => 27
	i32 2853208004, ; 188: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 122
	i32 2855708567, ; 189: Xamarin.AndroidX.Transition => 0xaa36a797 => 118
	i32 2861816565, ; 190: Rg.Plugins.Popup.dll => 0xaa93daf5 => 11
	i32 2868557005, ; 191: Syncfusion.Licensing.dll => 0xaafab4cd => 19
	i32 2874148507, ; 192: Syncfusion.Core.XForms.Android => 0xab50069b => 17
	i32 2876493027, ; 193: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 56
	i32 2878950252, ; 194: Plugin.BluetoothClassic.Abstractions => 0xab994b6c => 9
	i32 2893257763, ; 195: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 30
	i32 2903344695, ; 196: System.ComponentModel.Composition => 0xad0d8637 => 145
	i32 2905242038, ; 197: mscorlib.dll => 0xad2a79b6 => 7
	i32 2916838712, ; 198: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 123
	i32 2919462931, ; 199: System.Numerics.Vectors.dll => 0xae037813 => 25
	i32 2921128767, ; 200: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 69
	i32 2921692953, ; 201: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 45
	i32 2922925221, ; 202: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 64
	i32 2978675010, ; 203: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 87
	i32 3016983068, ; 204: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 115
	i32 3024354802, ; 205: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 92
	i32 3044182254, ; 206: FormsViewGroup => 0xb57288ee => 4
	i32 3056250942, ; 207: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 38
	i32 3057625584, ; 208: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 105
	i32 3068715062, ; 209: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 31
	i32 3092211740, ; 210: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 53
	i32 3111772706, ; 211: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3194035187, ; 212: Xamarin.Android.Support.v7.MediaRouter => 0xbe611bf3 => 61
	i32 3204380047, ; 213: System.Data.dll => 0xbefef58f => 140
	i32 3204912593, ; 214: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 38
	i32 3211777861, ; 215: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 86
	i32 3233339011, ; 216: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 32
	i32 3247949154, ; 217: Mono.Security => 0xc197c562 => 148
	i32 3258312781, ; 218: Xamarin.AndroidX.CardView => 0xc235e84d => 77
	i32 3267021929, ; 219: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 75
	i32 3296380511, ; 220: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 39
	i32 3317135071, ; 221: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 85
	i32 3317144872, ; 222: System.Data => 0xc5b79d28 => 140
	i32 3321585405, ; 223: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 47
	i32 3340431453, ; 224: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 74
	i32 3345895724, ; 225: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 111
	i32 3346324047, ; 226: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 106
	i32 3352662376, ; 227: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 41
	i32 3353484488, ; 228: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 91
	i32 3357663996, ; 229: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 44
	i32 3362522851, ; 230: Xamarin.AndroidX.Core => 0xc86c06e3 => 83
	i32 3366347497, ; 231: Java.Interop => 0xc8a662e9 => 5
	i32 3369739654, ; 232: Xamarin.AndroidX.Palette => 0xc8da2586 => 108
	i32 3374999561, ; 233: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 112
	i32 3375054972, ; 234: Plugin.BluetoothClassic.Android.dll => 0xc92b407c => 10
	i32 3404865022, ; 235: System.ServiceModel.Internals => 0xcaf21dfe => 138
	i32 3429136800, ; 236: System.Xml => 0xcc6479a0 => 27
	i32 3430777524, ; 237: netstandard => 0xcc7d82b4 => 139
	i32 3434749838, ; 238: Syncfusion.Buttons.XForms.Android.dll => 0xccba1f8e => 13
	i32 3439690031, ; 239: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 37
	i32 3441283291, ; 240: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 88
	i32 3476120550, ; 241: Mono.Android => 0xcf3163e6 => 6
	i32 3486566296, ; 242: System.Transactions => 0xcfd0c798 => 141
	i32 3493954962, ; 243: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 79
	i32 3498942916, ; 244: Xamarin.Android.Support.v7.CardView.dll => 0xd08da1c4 => 60
	i32 3501239056, ; 245: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 75
	i32 3509114376, ; 246: System.Xml.Linq => 0xd128d608 => 28
	i32 3536029504, ; 247: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 126
	i32 3547625832, ; 248: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 55
	i32 3567349600, ; 249: System.ComponentModel.Composition.dll => 0xd4a16f60 => 145
	i32 3618140916, ; 250: Xamarin.AndroidX.Preference => 0xd7a872f4 => 109
	i32 3627220390, ; 251: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 110
	i32 3629053394, ; 252: Xamarin.AndroidX.MediaRouter.dll => 0xd84ef5d2 => 103
	i32 3632359727, ; 253: Xamarin.Forms.Platform => 0xd881692f => 127
	i32 3633644679, ; 254: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 69
	i32 3641597786, ; 255: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 95
	i32 3664423555, ; 256: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 66
	i32 3672376724, ; 257: SteelStrickers => 0xdae40594 => 12
	i32 3672681054, ; 258: Mono.Android.dll => 0xdae8aa5e => 6
	i32 3676310014, ; 259: System.Web.Services.dll => 0xdb2009fe => 146
	i32 3678221644, ; 260: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 59
	i32 3681174138, ; 261: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 31
	i32 3682565725, ; 262: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 76
	i32 3684561358, ; 263: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 79
	i32 3689375977, ; 264: System.Drawing.Common => 0xdbe768e9 => 1
	i32 3714038699, ; 265: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 52
	i32 3718463572, ; 266: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 36
	i32 3718780102, ; 267: Xamarin.AndroidX.Annotation => 0xdda814c6 => 68
	i32 3724971120, ; 268: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 105
	i32 3758932259, ; 269: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 93
	i32 3759042612, ; 270: Syncfusion.SfCarousel.XForms => 0xe00e7034 => 21
	i32 3776062606, ; 271: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 48
	i32 3786282454, ; 272: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 78
	i32 3789524022, ; 273: Xamarin.Android.Support.v7.Palette.dll => 0xe1df8c36 => 62
	i32 3822602673, ; 274: Xamarin.AndroidX.Media => 0xe3d849b1 => 102
	i32 3829621856, ; 275: System.Numerics.dll => 0xe4436460 => 24
	i32 3832731800, ; 276: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 41
	i32 3862817207, ; 277: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 34
	i32 3874897629, ; 278: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 34
	i32 3883175360, ; 279: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 59
	i32 3885922214, ; 280: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 118
	i32 3888767677, ; 281: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 111
	i32 3896760992, ; 282: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 83
	i32 3920810846, ; 283: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 144
	i32 3921031405, ; 284: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 121
	i32 3929079551, ; 285: Syncfusion.Cards.XForms.Android.dll => 0xea30feff => 15
	i32 3931092270, ; 286: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 107
	i32 3945713374, ; 287: System.Data.DataSetExtensions.dll => 0xeb2ecede => 142
	i32 3955647286, ; 288: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 72
	i32 4015948917, ; 289: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 70
	i32 4025784931, ; 290: System.Memory => 0xeff49a63 => 147
	i32 4063435586, ; 291: Xamarin.Android.Support.CustomView => 0xf2331b42 => 45
	i32 4105002889, ; 292: Mono.Security.dll => 0xf4ad5f89 => 148
	i32 4151237749, ; 293: System.Core => 0xf76edc75 => 22
	i32 4182413190, ; 294: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 99
	i32 4216993138, ; 295: Xamarin.Android.Support.Transition.dll => 0xfb5a3572 => 57
	i32 4219003402, ; 296: Xamarin.Android.Support.v7.CardView => 0xfb78e20a => 60
	i32 4292120959 ; 297: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 99
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [298 x i32] [
	i32 15, i32 97, i32 130, i32 8, i32 125, i32 65, i32 14, i32 114, ; 0..7
	i32 114, i32 134, i32 29, i32 78, i32 40, i32 116, i32 30, i32 76, ; 8..15
	i32 58, i32 92, i32 103, i32 146, i32 81, i32 96, i32 90, i32 57, ; 16..23
	i32 67, i32 24, i32 61, i32 94, i32 147, i32 36, i32 42, i32 80, ; 24..31
	i32 124, i32 89, i32 7, i32 23, i32 90, i32 101, i32 40, i32 54, ; 32..39
	i32 141, i32 134, i32 46, i32 63, i32 144, i32 85, i32 121, i32 73, ; 40..47
	i32 28, i32 136, i32 37, i32 131, i32 16, i32 18, i32 135, i32 143, ; 48..55
	i32 50, i32 1, i32 110, i32 58, i32 11, i32 10, i32 54, i32 130, ; 56..63
	i32 8, i32 135, i32 53, i32 94, i32 4, i32 33, i32 20, i32 113, ; 64..71
	i32 72, i32 127, i32 98, i32 133, i32 35, i32 23, i32 119, i32 106, ; 72..79
	i32 73, i32 115, i32 120, i32 136, i32 70, i32 44, i32 87, i32 32, ; 80..87
	i32 46, i32 138, i32 113, i32 102, i32 82, i32 49, i32 128, i32 143, ; 88..95
	i32 71, i32 16, i32 17, i32 43, i32 86, i32 29, i32 3, i32 100, ; 96..103
	i32 123, i32 84, i32 2, i32 26, i32 117, i32 129, i32 64, i32 81, ; 104..111
	i32 132, i32 77, i32 116, i32 22, i32 89, i32 100, i32 133, i32 129, ; 112..119
	i32 107, i32 50, i32 124, i32 63, i32 128, i32 74, i32 35, i32 104, ; 120..127
	i32 21, i32 132, i32 98, i32 66, i32 51, i32 95, i32 13, i32 26, ; 128..135
	i32 25, i32 91, i32 126, i32 48, i32 43, i32 65, i32 137, i32 2, ; 136..143
	i32 119, i32 12, i32 101, i32 104, i32 93, i32 0, i32 112, i32 68, ; 144..151
	i32 42, i32 55, i32 18, i32 19, i32 49, i32 109, i32 51, i32 80, ; 152..159
	i32 139, i32 5, i32 47, i32 142, i32 97, i32 20, i32 120, i32 137, ; 160..167
	i32 84, i32 88, i32 96, i32 14, i32 0, i32 33, i32 117, i32 9, ; 168..175
	i32 67, i32 71, i32 39, i32 62, i32 125, i32 131, i32 108, i32 122, ; 176..183
	i32 52, i32 56, i32 82, i32 27, i32 122, i32 118, i32 11, i32 19, ; 184..191
	i32 17, i32 56, i32 9, i32 30, i32 145, i32 7, i32 123, i32 25, ; 192..199
	i32 69, i32 45, i32 64, i32 87, i32 115, i32 92, i32 4, i32 38, ; 200..207
	i32 105, i32 31, i32 53, i32 3, i32 61, i32 140, i32 38, i32 86, ; 208..215
	i32 32, i32 148, i32 77, i32 75, i32 39, i32 85, i32 140, i32 47, ; 216..223
	i32 74, i32 111, i32 106, i32 41, i32 91, i32 44, i32 83, i32 5, ; 224..231
	i32 108, i32 112, i32 10, i32 138, i32 27, i32 139, i32 13, i32 37, ; 232..239
	i32 88, i32 6, i32 141, i32 79, i32 60, i32 75, i32 28, i32 126, ; 240..247
	i32 55, i32 145, i32 109, i32 110, i32 103, i32 127, i32 69, i32 95, ; 248..255
	i32 66, i32 12, i32 6, i32 146, i32 59, i32 31, i32 76, i32 79, ; 256..263
	i32 1, i32 52, i32 36, i32 68, i32 105, i32 93, i32 21, i32 48, ; 264..271
	i32 78, i32 62, i32 102, i32 24, i32 41, i32 34, i32 34, i32 59, ; 272..279
	i32 118, i32 111, i32 83, i32 144, i32 121, i32 15, i32 107, i32 142, ; 280..287
	i32 72, i32 70, i32 147, i32 45, i32 148, i32 22, i32 99, i32 57, ; 288..295
	i32 60, i32 99 ; 296..297
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

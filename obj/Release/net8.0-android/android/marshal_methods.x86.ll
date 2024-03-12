; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [134 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [268 x i32] [
	i32 38948123, ; 0: ar\Microsoft.Maui.Controls.resources.dll => 0x2524d1b => 0
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 48
	i32 42244203, ; 2: he\Microsoft.Maui.Controls.resources.dll => 0x284986b => 9
	i32 42639949, ; 3: System.Threading.Thread => 0x28aa24d => 123
	i32 67008169, ; 4: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 5: Microsoft.Maui.Graphics.dll => 0x44bb714 => 47
	i32 83839681, ; 6: ms\Microsoft.Maui.Controls.resources.dll => 0x4ff4ac1 => 17
	i32 117431740, ; 7: System.Runtime.InteropServices => 0x6ffddbc => 115
	i32 136584136, ; 8: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0x8241bc8 => 32
	i32 140062828, ; 9: sk\Microsoft.Maui.Controls.resources.dll => 0x859306c => 25
	i32 165246403, ; 10: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 59
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 77
	i32 205061960, ; 12: System.ComponentModel => 0xc38ff48 => 90
	i32 220171995, ; 13: System.Diagnostics.Debug => 0xd1f8edb => 92
	i32 230752869, ; 14: Microsoft.CSharp.dll => 0xdc10265 => 84
	i32 231814094, ; 15: System.Globalization => 0xdd133ce => 95
	i32 317674968, ; 16: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 17: Xamarin.AndroidX.Activity.dll => 0x13031348 => 55
	i32 321963286, ; 18: fr\Microsoft.Maui.Controls.resources.dll => 0x1330c516 => 8
	i32 342366114, ; 19: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 66
	i32 347068432, ; 20: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 53
	i32 379916513, ; 21: System.Threading.Thread.dll => 0x16a510e1 => 123
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 101
	i32 395744057, ; 23: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 409257351, ; 24: tr\Microsoft.Maui.Controls.resources.dll => 0x1864c587 => 28
	i32 442565967, ; 25: System.Collections => 0x1a61054f => 87
	i32 450948140, ; 26: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 65
	i32 459347974, ; 27: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 116
	i32 469710990, ; 28: System.dll => 0x1bff388e => 128
	i32 489220957, ; 29: es\Microsoft.Maui.Controls.resources.dll => 0x1d28eb5d => 6
	i32 498788369, ; 30: System.ObjectModel => 0x1dbae811 => 106
	i32 513247710, ; 31: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 42
	i32 518183067, ; 32: GymEquipmentsStore.dll => 0x1ee2d89b => 83
	i32 538707440, ; 33: th\Microsoft.Maui.Controls.resources.dll => 0x201c05f0 => 27
	i32 539058512, ; 34: Microsoft.Extensions.Logging => 0x20216150 => 39
	i32 545304856, ; 35: System.Runtime.Extensions => 0x2080b118 => 113
	i32 627609679, ; 36: Xamarin.AndroidX.CustomView => 0x2568904f => 63
	i32 627931235, ; 37: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 38: System.Collections.Concurrent => 0x2814a96c => 85
	i32 690569205, ; 39: System.Xml.Linq.dll => 0x29293ff5 => 125
	i32 748832960, ; 40: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 51
	i32 759454413, ; 41: System.Net.Requests => 0x2d445acd => 104
	i32 775507847, ; 42: System.IO.Compression => 0x2e394f87 => 97
	i32 777317022, ; 43: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 44: Microsoft.Extensions.Options => 0x2f0980eb => 41
	i32 823281589, ; 45: System.Private.Uri.dll => 0x311247b5 => 107
	i32 830298997, ; 46: System.IO.Compression.Brotli => 0x317d5b75 => 96
	i32 869139383, ; 47: hi\Microsoft.Maui.Controls.resources.dll => 0x33ce03b7 => 10
	i32 877678880, ; 48: System.Globalization.dll => 0x34505120 => 95
	i32 880668424, ; 49: ru\Microsoft.Maui.Controls.resources.dll => 0x347def08 => 24
	i32 904024072, ; 50: System.ComponentModel.Primitives.dll => 0x35e25008 => 88
	i32 918734561, ; 51: pt-BR\Microsoft.Maui.Controls.resources.dll => 0x36c2c6e1 => 21
	i32 955402788, ; 52: Newtonsoft.Json => 0x38f24a24 => 48
	i32 961460050, ; 53: it\Microsoft.Maui.Controls.resources.dll => 0x394eb752 => 14
	i32 967690846, ; 54: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 66
	i32 975874589, ; 55: System.Xml.XDocument => 0x3a2aaa1d => 127
	i32 990727110, ; 56: ro\Microsoft.Maui.Controls.resources.dll => 0x3b0d4bc6 => 23
	i32 992768348, ; 57: System.Collections.dll => 0x3b2c715c => 87
	i32 1012816738, ; 58: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 76
	i32 1028951442, ; 59: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 38
	i32 1035644815, ; 60: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 56
	i32 1043950537, ; 61: de\Microsoft.Maui.Controls.resources.dll => 0x3e396bc9 => 4
	i32 1044663988, ; 62: System.Linq.Expressions.dll => 0x3e444eb4 => 99
	i32 1052210849, ; 63: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 68
	i32 1082857460, ; 64: System.ComponentModel.TypeConverter => 0x408b17f4 => 89
	i32 1084122840, ; 65: Xamarin.Kotlin.StdLib => 0x409e66d8 => 81
	i32 1098259244, ; 66: System => 0x41761b2c => 128
	i32 1108272742, ; 67: sv\Microsoft.Maui.Controls.resources.dll => 0x420ee666 => 26
	i32 1117529484, ; 68: pl\Microsoft.Maui.Controls.resources.dll => 0x429c258c => 20
	i32 1118262833, ; 69: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 70: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 71: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 73
	i32 1260983243, ; 72: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1292207520, ; 73: SQLitePCLRaw.core.dll => 0x4d0585a0 => 52
	i32 1293217323, ; 74: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 64
	i32 1308624726, ; 75: hr\Microsoft.Maui.Controls.resources.dll => 0x4e000756 => 11
	i32 1315165619, ; 76: GymEquipmentsStore => 0x4e63d5b3 => 83
	i32 1324164729, ; 77: System.Linq => 0x4eed2679 => 100
	i32 1336711579, ; 78: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x4fac999b => 31
	i32 1364015309, ; 79: System.IO => 0x514d38cd => 98
	i32 1373134921, ; 80: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 81: Xamarin.AndroidX.SavedState => 0x52114ed3 => 76
	i32 1379779777, ; 82: System.Resources.ResourceManager => 0x523dc4c1 => 112
	i32 1406073936, ; 83: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 60
	i32 1430672901, ; 84: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1457743152, ; 85: System.Runtime.Extensions.dll => 0x56e36530 => 113
	i32 1461004990, ; 86: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1462112819, ; 87: System.IO.Compression.dll => 0x57261233 => 97
	i32 1469204771, ; 88: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 57
	i32 1470490898, ; 89: Microsoft.Extensions.Primitives => 0x57a5e912 => 42
	i32 1480492111, ; 90: System.IO.Compression.Brotli.dll => 0x583e844f => 96
	i32 1526286932, ; 91: vi\Microsoft.Maui.Controls.resources.dll => 0x5af94a54 => 30
	i32 1543031311, ; 92: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 121
	i32 1550322496, ; 93: System.Reflection.Extensions.dll => 0x5c680b40 => 110
	i32 1604451928, ; 94: SQLiteNetExtensions => 0x5fa1fe58 => 50
	i32 1622152042, ; 95: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 70
	i32 1622358360, ; 96: System.Dynamic.Runtime => 0x60b33958 => 94
	i32 1624863272, ; 97: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 79
	i32 1636350590, ; 98: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 62
	i32 1639515021, ; 99: System.Net.Http.dll => 0x61b9038d => 102
	i32 1639986890, ; 100: System.Text.RegularExpressions => 0x61c036ca => 121
	i32 1657153582, ; 101: System.Runtime => 0x62c6282e => 117
	i32 1658251792, ; 102: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 80
	i32 1666713512, ; 103: SQLiteNetExtensions.dll => 0x635807a8 => 50
	i32 1677501392, ; 104: System.Net.Primitives.dll => 0x63fca3d0 => 103
	i32 1679769178, ; 105: System.Security.Cryptography => 0x641f3e5a => 118
	i32 1701541528, ; 106: System.Diagnostics.Debug.dll => 0x656b7698 => 92
	i32 1711441057, ; 107: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 53
	i32 1726116996, ; 108: System.Reflection.dll => 0x66e27484 => 111
	i32 1729485958, ; 109: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 58
	i32 1743415430, ; 110: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1765942094, ; 111: System.Reflection.Extensions => 0x6942234e => 110
	i32 1766324549, ; 112: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 77
	i32 1770582343, ; 113: Microsoft.Extensions.Logging.dll => 0x6988f147 => 39
	i32 1780572499, ; 114: Mono.Android.Runtime.dll => 0x6a216153 => 132
	i32 1782862114, ; 115: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 116: Xamarin.AndroidX.Fragment => 0x6a96652d => 65
	i32 1793755602, ; 117: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 118: Xamarin.AndroidX.Loader => 0x6bcd3296 => 70
	i32 1813058853, ; 119: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 81
	i32 1813201214, ; 120: Xamarin.Google.Android.Material => 0x6c13413e => 80
	i32 1818569960, ; 121: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 74
	i32 1824175904, ; 122: System.Text.Encoding.Extensions => 0x6cbab720 => 119
	i32 1828688058, ; 123: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 40
	i32 1853025655, ; 124: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 125: System.Linq.Expressions => 0x6ec71a65 => 99
	i32 1875935024, ; 126: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1893218855, ; 127: cs\Microsoft.Maui.Controls.resources.dll => 0x70d83a27 => 2
	i32 1900610850, ; 128: System.Resources.ResourceManager.dll => 0x71490522 => 112
	i32 1910275211, ; 129: System.Collections.NonGeneric.dll => 0x71dc7c8b => 86
	i32 1939592360, ; 130: System.Private.Xml.Linq => 0x739bd4a8 => 108
	i32 1953182387, ; 131: id\Microsoft.Maui.Controls.resources.dll => 0x746b32b3 => 13
	i32 1968388702, ; 132: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 35
	i32 2003115576, ; 133: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 134: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 68
	i32 2045470958, ; 135: System.Private.Xml => 0x79eb68ee => 109
	i32 2055257422, ; 136: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 67
	i32 2066184531, ; 137: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2079903147, ; 138: System.Runtime.dll => 0x7bf8cdab => 117
	i32 2090596640, ; 139: System.Numerics.Vectors => 0x7c9bf920 => 105
	i32 2103459038, ; 140: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 54
	i32 2127167465, ; 141: System.Console => 0x7ec9ffe9 => 91
	i32 2159891885, ; 142: Microsoft.Maui => 0x80bd55ad => 45
	i32 2169148018, ; 143: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 144: Microsoft.Extensions.Options.dll => 0x820d22b3 => 41
	i32 2192057212, ; 145: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 40
	i32 2193016926, ; 146: System.ObjectModel.dll => 0x82b6c85e => 106
	i32 2201107256, ; 147: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 82
	i32 2201231467, ; 148: System.Net.Http => 0x8334206b => 102
	i32 2207618523, ; 149: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 150: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 36
	i32 2279755925, ; 151: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 75
	i32 2303942373, ; 152: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 153: System.Private.CoreLib.dll => 0x896b7878 => 130
	i32 2340441535, ; 154: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 114
	i32 2353062107, ; 155: System.Net.Primitives => 0x8c40e0db => 103
	i32 2366048013, ; 156: hu\Microsoft.Maui.Controls.resources.dll => 0x8d07070d => 12
	i32 2368005991, ; 157: System.Xml.ReaderWriter.dll => 0x8d24e767 => 126
	i32 2371007202, ; 158: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 35
	i32 2395872292, ; 159: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2427813419, ; 160: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 161: System.Console.dll => 0x912896e5 => 91
	i32 2454642406, ; 162: System.Text.Encoding.dll => 0x924edee6 => 120
	i32 2465273461, ; 163: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 51
	i32 2471841756, ; 164: netstandard.dll => 0x93554fdc => 129
	i32 2475788418, ; 165: Java.Interop.dll => 0x93918882 => 131
	i32 2480646305, ; 166: Microsoft.Maui.Controls => 0x93dba8a1 => 43
	i32 2503351294, ; 167: ko\Microsoft.Maui.Controls.resources.dll => 0x95361bfe => 16
	i32 2550873716, ; 168: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 169: Microsoft.CSharp => 0x98ba5a04 => 84
	i32 2576534780, ; 170: ja\Microsoft.Maui.Controls.resources.dll => 0x9992ccfc => 15
	i32 2585220780, ; 171: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 119
	i32 2593496499, ; 172: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 173: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 82
	i32 2617129537, ; 174: System.Private.Xml.dll => 0x9bfe3a41 => 109
	i32 2620871830, ; 175: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 62
	i32 2626831493, ; 176: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2664396074, ; 177: System.Xml.XDocument.dll => 0x9ecf752a => 127
	i32 2693849962, ; 178: System.IO.dll => 0xa090e36a => 98
	i32 2715334215, ; 179: System.Threading.Tasks.dll => 0xa1d8b647 => 122
	i32 2732626843, ; 180: Xamarin.AndroidX.Activity => 0xa2e0939b => 55
	i32 2737747696, ; 181: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 57
	i32 2740698338, ; 182: ca\Microsoft.Maui.Controls.resources.dll => 0xa35bbce2 => 1
	i32 2752995522, ; 183: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 184: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 44
	i32 2764765095, ; 185: Microsoft.Maui.dll => 0xa4caf7a7 => 45
	i32 2778768386, ; 186: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 78
	i32 2785988530, ; 187: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 188: Microsoft.Maui.Graphics => 0xa7008e0b => 47
	i32 2810250172, ; 189: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 60
	i32 2853208004, ; 190: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 78
	i32 2861189240, ; 191: Microsoft.Maui.Essentials => 0xaa8a4878 => 46
	i32 2900621748, ; 192: System.Dynamic.Runtime.dll => 0xace3f9b4 => 94
	i32 2901442782, ; 193: System.Reflection => 0xacf080de => 111
	i32 2909740682, ; 194: System.Private.CoreLib => 0xad6f1e8a => 130
	i32 2916838712, ; 195: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 79
	i32 2919462931, ; 196: System.Numerics.Vectors.dll => 0xae037813 => 105
	i32 2959614098, ; 197: System.ComponentModel.dll => 0xb0682092 => 90
	i32 2978675010, ; 198: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 64
	i32 3038032645, ; 199: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3053864966, ; 200: fi\Microsoft.Maui.Controls.resources.dll => 0xb6064806 => 7
	i32 3057625584, ; 201: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 71
	i32 3059408633, ; 202: Mono.Android.Runtime => 0xb65adef9 => 132
	i32 3059793426, ; 203: System.ComponentModel.Primitives => 0xb660be12 => 88
	i32 3075834255, ; 204: System.Threading.Tasks => 0xb755818f => 122
	i32 3178803400, ; 205: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 72
	i32 3220365878, ; 206: System.Threading => 0xbff2e236 => 124
	i32 3258312781, ; 207: Xamarin.AndroidX.CardView => 0xc235e84d => 58
	i32 3286872994, ; 208: SQLite-net.dll => 0xc3e9b3a2 => 49
	i32 3299363146, ; 209: System.Text.Encoding => 0xc4a8494a => 120
	i32 3305363605, ; 210: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 211: System.Net.Requests.dll => 0xc5b097e4 => 104
	i32 3317135071, ; 212: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 63
	i32 3346324047, ; 213: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 73
	i32 3357674450, ; 214: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3360279109, ; 215: SQLitePCLRaw.core => 0xc849ca45 => 52
	i32 3362522851, ; 216: Xamarin.AndroidX.Core => 0xc86c06e3 => 61
	i32 3366347497, ; 217: Java.Interop => 0xc8a662e9 => 131
	i32 3374999561, ; 218: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 75
	i32 3381016424, ; 219: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 220: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 37
	i32 3430777524, ; 221: netstandard => 0xcc7d82b4 => 129
	i32 3458724246, ; 222: pt\Microsoft.Maui.Controls.resources.dll => 0xce27f196 => 22
	i32 3471940407, ; 223: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 89
	i32 3476120550, ; 224: Mono.Android => 0xcf3163e6 => 133
	i32 3484440000, ; 225: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3509114376, ; 226: System.Xml.Linq => 0xd128d608 => 125
	i32 3580758918, ; 227: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3592228221, ; 228: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0xd61d0d7d => 33
	i32 3608519521, ; 229: System.Linq.dll => 0xd715a361 => 100
	i32 3624195450, ; 230: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 114
	i32 3641597786, ; 231: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 67
	i32 3643446276, ; 232: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 233: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 72
	i32 3657292374, ; 234: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 36
	i32 3672681054, ; 235: Mono.Android.dll => 0xdae8aa5e => 133
	i32 3724971120, ; 236: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 71
	i32 3748608112, ; 237: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 93
	i32 3751619990, ; 238: da\Microsoft.Maui.Controls.resources.dll => 0xdf9d2d96 => 3
	i32 3754567612, ; 239: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 54
	i32 3786282454, ; 240: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 59
	i32 3792276235, ; 241: System.Collections.NonGeneric => 0xe2098b0b => 86
	i32 3823082795, ; 242: System.Security.Cryptography.dll => 0xe3df9d2b => 118
	i32 3841636137, ; 243: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 38
	i32 3849253459, ; 244: System.Runtime.InteropServices.dll => 0xe56ef253 => 115
	i32 3876362041, ; 245: SQLite-net => 0xe70c9739 => 49
	i32 3896106733, ; 246: System.Collections.Concurrent.dll => 0xe839deed => 85
	i32 3896760992, ; 247: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 61
	i32 3920221145, ; 248: nl\Microsoft.Maui.Controls.resources.dll => 0xe9a9d3d9 => 19
	i32 3928044579, ; 249: System.Xml.ReaderWriter => 0xea213423 => 126
	i32 3931092270, ; 250: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 74
	i32 3955647286, ; 251: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 56
	i32 4025784931, ; 252: System.Memory => 0xeff49a63 => 101
	i32 4046471985, ; 253: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 44
	i32 4068434129, ; 254: System.Private.Xml.Linq.dll => 0xf27f60d1 => 108
	i32 4073602200, ; 255: System.Threading.dll => 0xf2ce3c98 => 124
	i32 4091086043, ; 256: el\Microsoft.Maui.Controls.resources.dll => 0xf3d904db => 5
	i32 4094352644, ; 257: Microsoft.Maui.Essentials.dll => 0xf40add04 => 46
	i32 4100113165, ; 258: System.Private.Uri => 0xf462c30d => 107
	i32 4103439459, ; 259: uk\Microsoft.Maui.Controls.resources.dll => 0xf4958463 => 29
	i32 4126470640, ; 260: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 37
	i32 4150914736, ; 261: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4181436372, ; 262: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 116
	i32 4182413190, ; 263: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 69
	i32 4213026141, ; 264: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 93
	i32 4249188766, ; 265: nb\Microsoft.Maui.Controls.resources.dll => 0xfd45799e => 18
	i32 4271975918, ; 266: Microsoft.Maui.Controls.dll => 0xfea12dee => 43
	i32 4292120959 ; 267: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 69
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [268 x i32] [
	i32 0, ; 0
	i32 48, ; 1
	i32 9, ; 2
	i32 123, ; 3
	i32 33, ; 4
	i32 47, ; 5
	i32 17, ; 6
	i32 115, ; 7
	i32 32, ; 8
	i32 25, ; 9
	i32 59, ; 10
	i32 77, ; 11
	i32 90, ; 12
	i32 92, ; 13
	i32 84, ; 14
	i32 95, ; 15
	i32 30, ; 16
	i32 55, ; 17
	i32 8, ; 18
	i32 66, ; 19
	i32 53, ; 20
	i32 123, ; 21
	i32 101, ; 22
	i32 34, ; 23
	i32 28, ; 24
	i32 87, ; 25
	i32 65, ; 26
	i32 116, ; 27
	i32 128, ; 28
	i32 6, ; 29
	i32 106, ; 30
	i32 42, ; 31
	i32 83, ; 32
	i32 27, ; 33
	i32 39, ; 34
	i32 113, ; 35
	i32 63, ; 36
	i32 19, ; 37
	i32 85, ; 38
	i32 125, ; 39
	i32 51, ; 40
	i32 104, ; 41
	i32 97, ; 42
	i32 25, ; 43
	i32 41, ; 44
	i32 107, ; 45
	i32 96, ; 46
	i32 10, ; 47
	i32 95, ; 48
	i32 24, ; 49
	i32 88, ; 50
	i32 21, ; 51
	i32 48, ; 52
	i32 14, ; 53
	i32 66, ; 54
	i32 127, ; 55
	i32 23, ; 56
	i32 87, ; 57
	i32 76, ; 58
	i32 38, ; 59
	i32 56, ; 60
	i32 4, ; 61
	i32 99, ; 62
	i32 68, ; 63
	i32 89, ; 64
	i32 81, ; 65
	i32 128, ; 66
	i32 26, ; 67
	i32 20, ; 68
	i32 16, ; 69
	i32 22, ; 70
	i32 73, ; 71
	i32 2, ; 72
	i32 52, ; 73
	i32 64, ; 74
	i32 11, ; 75
	i32 83, ; 76
	i32 100, ; 77
	i32 31, ; 78
	i32 98, ; 79
	i32 32, ; 80
	i32 76, ; 81
	i32 112, ; 82
	i32 60, ; 83
	i32 0, ; 84
	i32 113, ; 85
	i32 6, ; 86
	i32 97, ; 87
	i32 57, ; 88
	i32 42, ; 89
	i32 96, ; 90
	i32 30, ; 91
	i32 121, ; 92
	i32 110, ; 93
	i32 50, ; 94
	i32 70, ; 95
	i32 94, ; 96
	i32 79, ; 97
	i32 62, ; 98
	i32 102, ; 99
	i32 121, ; 100
	i32 117, ; 101
	i32 80, ; 102
	i32 50, ; 103
	i32 103, ; 104
	i32 118, ; 105
	i32 92, ; 106
	i32 53, ; 107
	i32 111, ; 108
	i32 58, ; 109
	i32 1, ; 110
	i32 110, ; 111
	i32 77, ; 112
	i32 39, ; 113
	i32 132, ; 114
	i32 17, ; 115
	i32 65, ; 116
	i32 9, ; 117
	i32 70, ; 118
	i32 81, ; 119
	i32 80, ; 120
	i32 74, ; 121
	i32 119, ; 122
	i32 40, ; 123
	i32 26, ; 124
	i32 99, ; 125
	i32 8, ; 126
	i32 2, ; 127
	i32 112, ; 128
	i32 86, ; 129
	i32 108, ; 130
	i32 13, ; 131
	i32 35, ; 132
	i32 5, ; 133
	i32 68, ; 134
	i32 109, ; 135
	i32 67, ; 136
	i32 4, ; 137
	i32 117, ; 138
	i32 105, ; 139
	i32 54, ; 140
	i32 91, ; 141
	i32 45, ; 142
	i32 12, ; 143
	i32 41, ; 144
	i32 40, ; 145
	i32 106, ; 146
	i32 82, ; 147
	i32 102, ; 148
	i32 14, ; 149
	i32 36, ; 150
	i32 75, ; 151
	i32 18, ; 152
	i32 130, ; 153
	i32 114, ; 154
	i32 103, ; 155
	i32 12, ; 156
	i32 126, ; 157
	i32 35, ; 158
	i32 13, ; 159
	i32 10, ; 160
	i32 91, ; 161
	i32 120, ; 162
	i32 51, ; 163
	i32 129, ; 164
	i32 131, ; 165
	i32 43, ; 166
	i32 16, ; 167
	i32 11, ; 168
	i32 84, ; 169
	i32 15, ; 170
	i32 119, ; 171
	i32 20, ; 172
	i32 82, ; 173
	i32 109, ; 174
	i32 62, ; 175
	i32 15, ; 176
	i32 127, ; 177
	i32 98, ; 178
	i32 122, ; 179
	i32 55, ; 180
	i32 57, ; 181
	i32 1, ; 182
	i32 21, ; 183
	i32 44, ; 184
	i32 45, ; 185
	i32 78, ; 186
	i32 27, ; 187
	i32 47, ; 188
	i32 60, ; 189
	i32 78, ; 190
	i32 46, ; 191
	i32 94, ; 192
	i32 111, ; 193
	i32 130, ; 194
	i32 79, ; 195
	i32 105, ; 196
	i32 90, ; 197
	i32 64, ; 198
	i32 34, ; 199
	i32 7, ; 200
	i32 71, ; 201
	i32 132, ; 202
	i32 88, ; 203
	i32 122, ; 204
	i32 72, ; 205
	i32 124, ; 206
	i32 58, ; 207
	i32 49, ; 208
	i32 120, ; 209
	i32 7, ; 210
	i32 104, ; 211
	i32 63, ; 212
	i32 73, ; 213
	i32 24, ; 214
	i32 52, ; 215
	i32 61, ; 216
	i32 131, ; 217
	i32 75, ; 218
	i32 3, ; 219
	i32 37, ; 220
	i32 129, ; 221
	i32 22, ; 222
	i32 89, ; 223
	i32 133, ; 224
	i32 23, ; 225
	i32 125, ; 226
	i32 31, ; 227
	i32 33, ; 228
	i32 100, ; 229
	i32 114, ; 230
	i32 67, ; 231
	i32 28, ; 232
	i32 72, ; 233
	i32 36, ; 234
	i32 133, ; 235
	i32 71, ; 236
	i32 93, ; 237
	i32 3, ; 238
	i32 54, ; 239
	i32 59, ; 240
	i32 86, ; 241
	i32 118, ; 242
	i32 38, ; 243
	i32 115, ; 244
	i32 49, ; 245
	i32 85, ; 246
	i32 61, ; 247
	i32 19, ; 248
	i32 126, ; 249
	i32 74, ; 250
	i32 56, ; 251
	i32 101, ; 252
	i32 44, ; 253
	i32 108, ; 254
	i32 124, ; 255
	i32 5, ; 256
	i32 46, ; 257
	i32 107, ; 258
	i32 29, ; 259
	i32 37, ; 260
	i32 29, ; 261
	i32 116, ; 262
	i32 69, ; 263
	i32 93, ; 264
	i32 18, ; 265
	i32 43, ; 266
	i32 69 ; 267
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}

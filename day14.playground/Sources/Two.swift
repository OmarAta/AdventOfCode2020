import UIKit

public class Two {
    var mask = Array("")
    var mem = [Int : Int]()

    public init(_ input: String) {        
        mask = Array("00101X10011X0X111110010X010011X10101")
        saveMem(address: 41248, value: "4595332")
        saveMem(address: 26450, value: "60")
        saveMem(address: 32210, value: "982366")
        saveMem(address: 1060, value: "234632920")
        saveMem(address: 20694, value: "38159")
        saveMem(address: 45046, value: "58906955")
        mask = Array("010110010X1101XX11X0100001X0000X00X1")
        saveMem(address: 16069, value: "7758")
        saveMem(address: 55864, value: "2473265")
        saveMem(address: 37095, value: "103513009")
        saveMem(address: 4911, value: "1002")
        saveMem(address: 63231, value: "6932274")
        saveMem(address: 21265, value: "72322159")
        saveMem(address: 43724, value: "16591353")
        mask = Array("01001X01X101011101010101011X1X000000")
        saveMem(address: 63470, value: "30339812")
        saveMem(address: 16920, value: "471738")
        saveMem(address: 1014, value: "29735753")
        saveMem(address: 61061, value: "6866")
        saveMem(address: 8437, value: "9138168")
        saveMem(address: 46487, value: "1819945")
        saveMem(address: 2985, value: "15040783")
        mask = Array("0X10X1101111001X1X100X1X00011100XX11")
        saveMem(address: 32836, value: "12902")
        saveMem(address: 60365, value: "24782")
        saveMem(address: 29953, value: "10085")
        saveMem(address: 18214, value: "1160")
        mask = Array("001011X10X11100000100X0X0X0X01011001")
        saveMem(address: 39434, value: "37383633")
        saveMem(address: 278, value: "670174555")
        saveMem(address: 34062, value: "20749996")
        saveMem(address: 2583, value: "6222093")
        mask = Array("01X111X1001101X11110100XX001X1000XX1")
        saveMem(address: 6075, value: "49890")
        saveMem(address: 9363, value: "2392780")
        saveMem(address: 24967, value: "218861")
        mask = Array("X110111X1XX1010101111X01XX1000X001X1")
        saveMem(address: 41334, value: "11836")
        saveMem(address: 24242, value: "7263066")
        saveMem(address: 17289, value: "64986060")
        saveMem(address: 2583, value: "4702503")
        saveMem(address: 21650, value: "103905")
        saveMem(address: 134, value: "486675")
        mask = Array("00X010100110XXXX111000XXX1000011000X")
        saveMem(address: 45307, value: "37940")
        saveMem(address: 16597, value: "224911")
        saveMem(address: 17943, value: "392744")
        saveMem(address: 55001, value: "622484")
        saveMem(address: 35954, value: "470")
        mask = Array("11X01011X11000X1X1100X100X011101X011")
        saveMem(address: 1005, value: "56755")
        saveMem(address: 16146, value: "4333571")
        saveMem(address: 32347, value: "10486693")
        saveMem(address: 11452, value: "377363")
        saveMem(address: 25158, value: "328161913")
        saveMem(address: 51956, value: "250388")
        saveMem(address: 10044, value: "34078606")
        mask = Array("011011X1X111010111110000X001X1X00110")
        saveMem(address: 8773, value: "10575925")
        saveMem(address: 33116, value: "175")
        saveMem(address: 36101, value: "14593")
        mask = Array("0100010X110X0101010XX10X011111XX1101")
        saveMem(address: 21083, value: "1922")
        saveMem(address: 3653, value: "912")
        saveMem(address: 26768, value: "7321934")
        saveMem(address: 49134, value: "17616")
        saveMem(address: 62950, value: "41565481")
        saveMem(address: 12957, value: "2136786")
        saveMem(address: 10324, value: "17788")
        mask = Array("X11X0X0X11010101110X01111010X1100X11")
        saveMem(address: 5462, value: "18755")
        saveMem(address: 39408, value: "2435211")
        saveMem(address: 49271, value: "6589")
        mask = Array("X1X011XX01X100010110001X0X0X111X1100")
        saveMem(address: 52570, value: "2166")
        saveMem(address: 28731, value: "16573421")
        saveMem(address: 18265, value: "1192")
        saveMem(address: 22435, value: "10856992")
        saveMem(address: 19263, value: "7550")
        saveMem(address: 30541, value: "434738")
        saveMem(address: 36101, value: "869138")
        mask = Array("010001X001010001XX010100000010110X01")
        saveMem(address: 52893, value: "125505223")
        saveMem(address: 22919, value: "597")
        saveMem(address: 62950, value: "54107")
        saveMem(address: 52797, value: "7649588")
        saveMem(address: 30421, value: "3968")
        saveMem(address: 30429, value: "614720")
        mask = Array("01X0X10001X100010X1011XX00000X111X00")
        saveMem(address: 44718, value: "11141064")
        saveMem(address: 42713, value: "206218234")
        saveMem(address: 51781, value: "527553473")
        saveMem(address: 1967, value: "27527823")
        saveMem(address: 6386, value: "5404")
        mask = Array("00101X10XX11X0XX1110001000001110X11X")
        saveMem(address: 62339, value: "72046594")
        saveMem(address: 14657, value: "3243652")
        saveMem(address: 750, value: "40239")
        saveMem(address: 134, value: "1936539")
        saveMem(address: 5775, value: "266384125")
        mask = Array("011X111XXX110X01X11X000X00010100011X")
        saveMem(address: 2956, value: "438895")
        saveMem(address: 41520, value: "7282")
        saveMem(address: 42192, value: "34769")
        saveMem(address: 8837, value: "2587")
        mask = Array("01XX11100101000X0X10011XX01010011101")
        saveMem(address: 12515, value: "450388")
        saveMem(address: 62175, value: "649233")
        saveMem(address: 54743, value: "129273")
        saveMem(address: 10284, value: "159823")
        saveMem(address: 31311, value: "16983")
        saveMem(address: 56137, value: "852771967")
        mask = Array("11010X1X01010101X1010X11101111X00010")
        saveMem(address: 47190, value: "526627409")
        saveMem(address: 34299, value: "540572")
        saveMem(address: 61226, value: "61426238")
        saveMem(address: 12892, value: "61446")
        saveMem(address: 33421, value: "4192")
        mask = Array("0110111111X10101111010100XX01XX10100")
        saveMem(address: 41685, value: "258")
        saveMem(address: 26983, value: "60795579")
        saveMem(address: 28064, value: "10483")
        saveMem(address: 33070, value: "66557269")
        saveMem(address: 12624, value: "448724")
        saveMem(address: 38125, value: "141175913")
        mask = Array("010X1X00X101000X0111010101XX01011000")
        saveMem(address: 12957, value: "7693971")
        saveMem(address: 45285, value: "4628")
        saveMem(address: 48546, value: "799")
        saveMem(address: 17857, value: "7578026")
        mask = Array("00101X100101X0010110000000XX1010X110")
        saveMem(address: 41841, value: "234511")
        saveMem(address: 27387, value: "2990")
        saveMem(address: 24636, value: "1269957")
        saveMem(address: 15638, value: "428392")
        saveMem(address: 22064, value: "272")
        mask = Array("0XXX10X01011X011111000000XX0X100X010")
        saveMem(address: 26764, value: "482715793")
        saveMem(address: 8422, value: "70439")
        saveMem(address: 17857, value: "28381730")
        saveMem(address: 4524, value: "750659820")
        mask = Array("11101100010100X1011000111000XX00X010")
        saveMem(address: 52570, value: "517468200")
        saveMem(address: 25263, value: "11113122")
        saveMem(address: 33421, value: "32762600")
        mask = Array("11101X01XX1000010X10111000X1101X0X00")
        saveMem(address: 16577, value: "910")
        saveMem(address: 32450, value: "16924479")
        saveMem(address: 4421, value: "24801362")
        saveMem(address: 46638, value: "8546454")
        mask = Array("01X11X1101110101X1X1X010000XX101X001")
        saveMem(address: 34209, value: "24703796")
        saveMem(address: 30481, value: "831")
        saveMem(address: 46487, value: "147322")
        saveMem(address: 38619, value: "11686")
        saveMem(address: 26615, value: "1174")
        mask = Array("010X0X00110100X1XX000010110XX100X001")
        saveMem(address: 53587, value: "198046")
        saveMem(address: 38420, value: "22334")
        saveMem(address: 20181, value: "962")
        mask = Array("XX101101X01000010XX01111001111010100")
        saveMem(address: 33812, value: "107321")
        saveMem(address: 8613, value: "7395")
        saveMem(address: 1117, value: "149990")
        saveMem(address: 22919, value: "23596")
        mask = Array("1X01110110010X01X100000001111011X010")
        saveMem(address: 57800, value: "254591077")
        saveMem(address: 6633, value: "60308580")
        saveMem(address: 8980, value: "104196938")
        saveMem(address: 5936, value: "289911936")
        saveMem(address: 44806, value: "297364592")
        mask = Array("11X10XX0X1010X01010110XXX01111100X00")
        saveMem(address: 49271, value: "177794")
        saveMem(address: 15368, value: "259266583")
        saveMem(address: 19327, value: "590")
        saveMem(address: 40243, value: "24245")
        saveMem(address: 57130, value: "1201404")
        saveMem(address: 22545, value: "1831196")
        saveMem(address: 59161, value: "25210381")
        mask = Array("0X101X11111X010111100X110XX11000X10X")
        saveMem(address: 38749, value: "2091454")
        saveMem(address: 45138, value: "621877")
        saveMem(address: 52107, value: "3430339")
        mask = Array("0010X110X11X00101X100011XX111X000100")
        saveMem(address: 17228, value: "252642")
        saveMem(address: 23892, value: "13721")
        saveMem(address: 43787, value: "2786942")
        saveMem(address: 55481, value: "58875")
        saveMem(address: 513, value: "892")
        saveMem(address: 62445, value: "40312")
        mask = Array("0010X11XXX11001011X01010X0111110X100")
        saveMem(address: 17415, value: "7415167")
        saveMem(address: 9048, value: "46059")
        saveMem(address: 2159, value: "636711036")
        mask = Array("X010111X111X010X1110X10100XX1000X00X")
        saveMem(address: 38420, value: "104527")
        saveMem(address: 24790, value: "85")
        saveMem(address: 58634, value: "127952377")
        saveMem(address: 8958, value: "11672057")
        mask = Array("X01X111X00X110XX0X10000000000X0X0100")
        saveMem(address: 283, value: "241")
        saveMem(address: 8898, value: "36719")
        saveMem(address: 49134, value: "217820")
        saveMem(address: 31884, value: "419937")
        mask = Array("0XX11110X1110X0101111000000100110X00")
        saveMem(address: 27694, value: "6848")
        saveMem(address: 25843, value: "331711")
        saveMem(address: 6688, value: "581239")
        saveMem(address: 41591, value: "171")
        mask = Array("0100X100X1010X01010X001XX01XX1010101")
        saveMem(address: 30429, value: "1103121")
        saveMem(address: 42192, value: "7844667")
        saveMem(address: 21668, value: "51727200")
        mask = Array("001X1X10001X101XX1100X1000101100X010")
        saveMem(address: 4322, value: "157863993")
        saveMem(address: 49962, value: "9140")
        saveMem(address: 16964, value: "1599")
        saveMem(address: 14443, value: "2038")
        saveMem(address: 3767, value: "16636129")
        saveMem(address: 13476, value: "485497191")
        saveMem(address: 1663, value: "163345")
        mask = Array("X101110111010101X1X10011001X10110000")
        saveMem(address: 13172, value: "195")
        saveMem(address: 33921, value: "5684133")
        saveMem(address: 1337, value: "51317")
        mask = Array("X1XXX101110101X1010X0100XX111X101001")
        saveMem(address: 63928, value: "4636")
        saveMem(address: 56436, value: "3887978")
        saveMem(address: 6185, value: "3037")
        saveMem(address: 7095, value: "11521156")
        saveMem(address: 1663, value: "121401")
        saveMem(address: 7218, value: "20750")
        mask = Array("010001001X0101010X00001XXX100XX10100")
        saveMem(address: 24149, value: "309519")
        saveMem(address: 16287, value: "12731276")
        saveMem(address: 29772, value: "65227")
        saveMem(address: 37172, value: "2824")
        saveMem(address: 17508, value: "59271")
        saveMem(address: 22133, value: "3806")
        mask = Array("01X0X101011X000X0X101000100011111101")
        saveMem(address: 14401, value: "158547520")
        saveMem(address: 37172, value: "16841")
        saveMem(address: 40439, value: "461272566")
        saveMem(address: 60909, value: "478018315")
        saveMem(address: 43219, value: "2154608")
        saveMem(address: 25369, value: "46117")
        saveMem(address: 54852, value: "79656")
        mask = Array("XX10111001X100X1X1100X1X0001110001X1")
        saveMem(address: 4213, value: "900609324")
        saveMem(address: 19327, value: "28071")
        saveMem(address: 30421, value: "782")
        saveMem(address: 4804, value: "17293")
        mask = Array("0100X1000101X0010X010101X01000011001")
        saveMem(address: 18139, value: "1546181")
        saveMem(address: 14021, value: "33793814")
        saveMem(address: 46699, value: "2014")
        saveMem(address: 51956, value: "171606030")
        saveMem(address: 29702, value: "475302805")
        saveMem(address: 18265, value: "198549")
        mask = Array("0101X0110X1X0101X1X1X01101001X001XX1")
        saveMem(address: 38962, value: "132592128")
        saveMem(address: 9436, value: "7464578")
        saveMem(address: 12650, value: "49333")
        saveMem(address: 8837, value: "3234578")
        mask = Array("011X11101011X101111000XX001110001110")
        saveMem(address: 61694, value: "1206")
        saveMem(address: 32263, value: "20761769")
        saveMem(address: 2116, value: "193628")
        saveMem(address: 13505, value: "123039")
        saveMem(address: 62164, value: "14323289")
        mask = Array("1X101010100X0101X1110X01000101X00100")
        saveMem(address: 21385, value: "1022949")
        saveMem(address: 51318, value: "5667643")
        saveMem(address: 17420, value: "36980027")
        saveMem(address: 29202, value: "801")
        mask = Array("0101X01XX11X0101X10110X1010001001001")
        saveMem(address: 15338, value: "23103863")
        saveMem(address: 10488, value: "4521")
        saveMem(address: 13172, value: "17055515")
        mask = Array("X10111X11X01X111X100000000111011X111")
        saveMem(address: 36577, value: "397263")
        saveMem(address: 8992, value: "11944917")
        saveMem(address: 22064, value: "738796")
        saveMem(address: 17310, value: "1562710")
        saveMem(address: 30068, value: "4950154")
        mask = Array("011111X10111X10X010X00X1X100X0010001")
        saveMem(address: 31166, value: "6551")
        saveMem(address: 62218, value: "1528")
        saveMem(address: 11467, value: "35999360")
        saveMem(address: 39578, value: "11530695")
        saveMem(address: 30855, value: "27864")
        saveMem(address: 18369, value: "1610323")
        saveMem(address: 58953, value: "12938251")
        mask = Array("01X111010X1111X0010X0XX010000X000111")
        saveMem(address: 15411, value: "1096")
        saveMem(address: 49541, value: "3181")
        saveMem(address: 23568, value: "276408")
        saveMem(address: 45168, value: "1721")
        saveMem(address: 11394, value: "155136")
        mask = Array("1111X1X011010001X101010X100XX11001X1")
        saveMem(address: 61945, value: "26647548")
        saveMem(address: 63262, value: "110741")
        saveMem(address: 33783, value: "158")
        saveMem(address: 12753, value: "200460")
        saveMem(address: 43229, value: "7579")
        saveMem(address: 37084, value: "26507")
        mask = Array("0100110011X10101010X00X01X11X1X10101")
        saveMem(address: 65089, value: "636807464")
        saveMem(address: 5775, value: "4440830")
        saveMem(address: 52107, value: "69328099")
        saveMem(address: 38420, value: "859060126")
        saveMem(address: 21272, value: "1700")
        saveMem(address: 12062, value: "176162")
        saveMem(address: 12094, value: "8733")
        mask = Array("X100010111XX01X1X1010100X01101001X1X")
        saveMem(address: 44718, value: "33650499")
        saveMem(address: 26507, value: "165784650")
        saveMem(address: 12622, value: "2023")
        saveMem(address: 5651, value: "120398699")
        mask = Array("110001011X010X0111X10X00011110001X00")
        saveMem(address: 44975, value: "666498")
        saveMem(address: 11614, value: "751")
        saveMem(address: 61354, value: "5063")
        saveMem(address: 4396, value: "1131")
        saveMem(address: 25418, value: "882")
        saveMem(address: 49245, value: "64151")
        mask = Array("011X1X110111X1XX11X1100X01000X101001")
        saveMem(address: 59013, value: "1141214")
        saveMem(address: 18016, value: "95668408")
        saveMem(address: 30067, value: "18132964")
        saveMem(address: 38900, value: "286972459")
        saveMem(address: 42265, value: "13529062")
        saveMem(address: 59369, value: "6028326")
        mask = Array("0110110X010100010XXX0X00X0011X101X1X")
        saveMem(address: 6479, value: "8816055")
        saveMem(address: 28451, value: "29446")
        saveMem(address: 61417, value: "59156")
        saveMem(address: 6694, value: "15597")
        saveMem(address: 29264, value: "115437")
        mask = Array("11110100110101011101XX0001X1X1110101")
        saveMem(address: 46886, value: "114630")
        saveMem(address: 17383, value: "452299")
        mask = Array("010X110X11X10101000X001X011010000100")
        saveMem(address: 19215, value: "487176198")
        saveMem(address: 59629, value: "2120284")
        saveMem(address: 27009, value: "3064")
        saveMem(address: 42335, value: "22072")
        saveMem(address: 514, value: "2010")
        mask = Array("0100X1001101010X010000X0001000X00100")
        saveMem(address: 37232, value: "2564")
        saveMem(address: 20561, value: "29506163")
        saveMem(address: 27396, value: "380700410")
        saveMem(address: 34075, value: "868")
        saveMem(address: 24967, value: "1882926")
        mask = Array("010X1X01XX110111111X0XX0000X010X0101")
        saveMem(address: 61084, value: "3068852")
        saveMem(address: 33028, value: "188720342")
        saveMem(address: 17375, value: "62850")
        mask = Array("X10X1X0X110101010X01001001101000X000")
        saveMem(address: 24149, value: "1815")
        saveMem(address: 51489, value: "197928369")
        saveMem(address: 27694, value: "231814")
        saveMem(address: 11813, value: "1002177793")
        saveMem(address: 526, value: "104755102")
        saveMem(address: 22216, value: "8396")
        mask = Array("0110111101010001X1X0X11100X010001111")
        saveMem(address: 21083, value: "2509191")
        saveMem(address: 13215, value: "172339241")
        saveMem(address: 12386, value: "106305632")
        mask = Array("X1X101X11101010101000X010X11101101X1")
        saveMem(address: 35709, value: "64980388")
        saveMem(address: 51838, value: "62510")
        saveMem(address: 48641, value: "1174272")
        saveMem(address: 42157, value: "149")
        mask = Array("0X101100010100010X0X00X1100101111111")
        saveMem(address: 35807, value: "1100541")
        saveMem(address: 10044, value: "69616152")
        saveMem(address: 3047, value: "142725213")
        mask = Array("11101X1X10X101010111X001XX10X0X00100")
        saveMem(address: 38049, value: "110")
        saveMem(address: 43097, value: "14955394")
        saveMem(address: 61810, value: "3545867")
        saveMem(address: 61238, value: "5370")
        saveMem(address: 20585, value: "191903")
        saveMem(address: 26133, value: "24248")
        mask = Array("010X110X011X00010110010100X0XXX1X011")
        saveMem(address: 15950, value: "140910")
        saveMem(address: 12062, value: "424527462")
        saveMem(address: 11876, value: "236")
        saveMem(address: 5182, value: "4776")
        saveMem(address: 50278, value: "490")
        mask = Array("010XX011011101X1110101110111110110X0")
        saveMem(address: 53736, value: "2314")
        saveMem(address: 12633, value: "5053")
        saveMem(address: 66, value: "49557761")
        mask = Array("01X01101X10101010101000X00111110100X")
        saveMem(address: 18849, value: "911")
        saveMem(address: 20666, value: "12891678")
        saveMem(address: 5609, value: "10432")
        saveMem(address: 59720, value: "22145720")
        saveMem(address: 17508, value: "42631")
        saveMem(address: 8585, value: "3448")
        mask = Array("11X1X10X110101X101010X01X0011011X001")
        saveMem(address: 30601, value: "9140827")
        saveMem(address: 30361, value: "4166366")
        saveMem(address: 46057, value: "16057")
        saveMem(address: 26983, value: "251682577")
        saveMem(address: 63197, value: "1603252")
        saveMem(address: 52893, value: "462048575")
        mask = Array("011011100111X00X11100X00100010001XXX")
        saveMem(address: 17534, value: "25807901")
        saveMem(address: 4932, value: "106350673")
        saveMem(address: 42192, value: "735653575")
        saveMem(address: 10874, value: "59007")
        mask = Array("01000101110001X1XX001000001X1X011111")
        saveMem(address: 48049, value: "386")
        saveMem(address: 1538, value: "138451275")
        saveMem(address: 50333, value: "15707")
        mask = Array("0101100X01110111XX1X0000001011001X01")
        saveMem(address: 18139, value: "102960")
        saveMem(address: 41277, value: "5837")
        saveMem(address: 44484, value: "29937")
        mask = Array("11101XX10X1X0001011000100X010010X00X")
        saveMem(address: 30615, value: "95201946")
        saveMem(address: 719, value: "3697022")
        saveMem(address: 27391, value: "150969140")
        saveMem(address: 62680, value: "427952")
        saveMem(address: 7349, value: "46922")
        saveMem(address: 17375, value: "41348888")
        saveMem(address: 57800, value: "1901")
        mask = Array("0010X11X1X11X011111X0011001X01001111")
        saveMem(address: 46994, value: "118757653")
        saveMem(address: 32947, value: "23571")
        saveMem(address: 8653, value: "1364")
        saveMem(address: 3767, value: "6954112")
        mask = Array("01001X0011010X000111X0X0X1X011011XXX")
        saveMem(address: 37908, value: "88438829")
        saveMem(address: 20630, value: "618075182")
        saveMem(address: 21520, value: "101250753")
        saveMem(address: 10703, value: "475904")
        mask = Array("001001101XX10010111X1X10100111XX11X1")
        saveMem(address: 17310, value: "2889476")
        saveMem(address: 2725, value: "463419")
        saveMem(address: 65001, value: "910330085")
        mask = Array("X1011011X111010101X110X1X1X0010110X0")
        saveMem(address: 15999, value: "18586203")
        saveMem(address: 12825, value: "51333145")
        saveMem(address: 29966, value: "596120517")
        saveMem(address: 26866, value: "141039")
        saveMem(address: 24223, value: "415414")
        saveMem(address: 24403, value: "16110598")
        mask = Array("0XX00X01111X01110X011010101X01101010")
        saveMem(address: 43382, value: "150995")
        saveMem(address: 28011, value: "1021785")
        saveMem(address: 60339, value: "7805893")
        saveMem(address: 37197, value: "268431")
        saveMem(address: 17792, value: "253366088")
        saveMem(address: 21437, value: "24057926")
        mask = Array("XX1011X111100X00111X1100010111010011")
        saveMem(address: 18006, value: "265940517")
        saveMem(address: 55921, value: "1634")
        saveMem(address: 27656, value: "17058")
        saveMem(address: 4911, value: "3686")
        saveMem(address: 33243, value: "8125794")
        saveMem(address: 47537, value: "146165365")
        mask = Array("110111011X01X1X10100X000010110111X0X")
        saveMem(address: 5775, value: "176470")
        saveMem(address: 63017, value: "24003454")
        mask = Array("00011X001X11XX11111X01101010X0000010")
        saveMem(address: 1604, value: "174349")
        saveMem(address: 42888, value: "7159712")
        saveMem(address: 26615, value: "1487")
        mask = Array("01X11101100111111X000X1001110001011X")
        saveMem(address: 5344, value: "8563500")
        saveMem(address: 21234, value: "166162105")
        saveMem(address: 48935, value: "10849963")
        mask = Array("01000101XX0001111000XX0000X010010X00")
        saveMem(address: 24149, value: "127627213")
        saveMem(address: 27338, value: "43164114")
        saveMem(address: 47215, value: "252815")
        saveMem(address: 47431, value: "32732410")
        mask = Array("01011100000100011X0X0XX101X111111100")
        saveMem(address: 13412, value: "4193068")
        saveMem(address: 45046, value: "148")
        saveMem(address: 63535, value: "11659")
        saveMem(address: 6518, value: "471308933")
        mask = Array("111X111011X1X1X101111X000100001101X1")
        saveMem(address: 31114, value: "118512878")
        saveMem(address: 41334, value: "1604")
        saveMem(address: 7338, value: "571")
        saveMem(address: 6001, value: "4126415")
        saveMem(address: 5215, value: "4392")
        saveMem(address: 47836, value: "1862")
        saveMem(address: 22064, value: "30804845")
        mask = Array("0111010X11X1010X0101X1110011101X0111")
        saveMem(address: 13321, value: "22426593")
        saveMem(address: 37095, value: "5357")
        saveMem(address: 44281, value: "467020")
        saveMem(address: 62680, value: "2721559")
        mask = Array("010001X0010100XX10010000011000101X00")
        saveMem(address: 30615, value: "261491")
        saveMem(address: 31097, value: "46202501")
        saveMem(address: 27880, value: "6002395")
        saveMem(address: 51385, value: "2780")
        saveMem(address: 51435, value: "43181943")
        saveMem(address: 42192, value: "107728750")
        mask = Array("101011100X1100110X1X00X0101X10X11101")
        saveMem(address: 48366, value: "859523")
        saveMem(address: 14111, value: "859")
        saveMem(address: 21668, value: "292390073")
        saveMem(address: 8073, value: "858")
        saveMem(address: 12920, value: "662378")
        mask = Array("X111X10011X10101X10101XX01111011X101")
        saveMem(address: 20630, value: "4051571")
        saveMem(address: 55963, value: "367")
        saveMem(address: 379, value: "10962356")
        saveMem(address: 33028, value: "37")
        saveMem(address: 24035, value: "9459")
        saveMem(address: 50949, value: "2030")
        mask = Array("001011100X110X111X10101100011X010X11")
        saveMem(address: 8437, value: "47226")
        saveMem(address: 41248, value: "319")
        saveMem(address: 9624, value: "3503")
        saveMem(address: 6875, value: "5282")
        mask = Array("11X111XX100101010100X01XX1X1001X1000")
        saveMem(address: 21292, value: "1673693")
        saveMem(address: 51132, value: "10346473")
        saveMem(address: 7504, value: "4325")
        mask = Array("111X010X1101011101X100010XX1X0111100")
        saveMem(address: 35415, value: "6296")
        saveMem(address: 19215, value: "1263591")
        saveMem(address: 49977, value: "379136185")
        saveMem(address: 62950, value: "28156510")
        saveMem(address: 8265, value: "28662942")
        mask = Array("01X110X01X1X0X11X1X00110000X01000100")
        saveMem(address: 54672, value: "131784041")
        saveMem(address: 11394, value: "24602")
        saveMem(address: 24646, value: "10584")
        saveMem(address: 44349, value: "4883")
        saveMem(address: 54743, value: "2940969")
        saveMem(address: 8265, value: "14841530")
        mask = Array("0X10111X11100X0011X011XX00X011011010")
        saveMem(address: 49374, value: "45910")
        saveMem(address: 25923, value: "368017518")
        saveMem(address: 25114, value: "8076340")
        saveMem(address: 62690, value: "904875563")
        mask = Array("010X11X0X1X1010X01010X01101001110101")
        saveMem(address: 39408, value: "3080")
        saveMem(address: 6918, value: "125955053")
        saveMem(address: 27880, value: "29186")
        mask = Array("01001101X101010X0101X1001111100010X1")
        saveMem(address: 11813, value: "153838914")
        saveMem(address: 20585, value: "1917")
        saveMem(address: 21385, value: "1881773")
        saveMem(address: 8556, value: "25758757")
        saveMem(address: 22435, value: "802061")
        saveMem(address: 27631, value: "13285866")
        mask = Array("01101110111X0001011X10100X0100X10101")
        saveMem(address: 23441, value: "186656612")
        saveMem(address: 2186, value: "189388742")
        saveMem(address: 12866, value: "874882")
        saveMem(address: 12947, value: "23895")
        saveMem(address: 20630, value: "77211")
        saveMem(address: 42083, value: "63015239")
        saveMem(address: 51838, value: "4984972")
        mask = Array("00101110X111001X1X10001XX0X111XXX101")
        saveMem(address: 14789, value: "244532376")
        saveMem(address: 21292, value: "736136092")
        saveMem(address: 10874, value: "513949")
        saveMem(address: 16755, value: "12361")
        saveMem(address: 5416, value: "22987")
        saveMem(address: 39578, value: "106587")
        mask = Array("010X11000X010001X1XXX0110011X1X1110X")
        saveMem(address: 43479, value: "61")
        saveMem(address: 47199, value: "15617564")
        saveMem(address: 18265, value: "6027808")

        var result = 0
        for (_,v) in mem {
            result += v
        }
        
        print(result)
    }
    private func saveMem(address: Int, value: String) {
        
        let binary = String(address, radix: 2)
        let bits = Array(repeating: "0", count: 36 - binary.count) + Array(binary)
        
        var addresses = ["0"]
        for (i, bit) in mask.enumerated() {
            var newAddresses = [String]()
            for addr in addresses {
                switch bit {
                case "0": newAddresses.append(addr + [bits[i]])
                case "1": newAddresses.append(addr + "1")
                case "X":
                    newAddresses.append(addr + "0")
                    newAddresses.append(addr + "1")
                default: continue
                }
            }
            addresses = newAddresses
        }
        
        for addr in addresses {
            mem[Int(addr, radix: 2)!] = Int(value)!
        }
    }
}
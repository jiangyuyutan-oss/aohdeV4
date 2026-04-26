.class public Lage/of/civilizations2/jakowski/lukasz/Keyboard;
.super Lage/of/civilizations2/jakowski/lukasz/Menu;
.source "Keyboard.java"


# static fields
.field public static activeColor_RGB_ID:I

.field public static changeAllianceNameMode:I

.field public static changeCityNameIDToo:I

.field public static changeCivilizationNameMode:I

.field public static changeProvinceNameMode:I

.field public static colorPickerMode:Z

.field public static commandsMode:Z

.field public static mapModeSearch:Z

.field public static numbers:Z

.field public static rankSearch:Z

.field public static shift:Z


# instance fields
.field private animationChangePosY:I

.field private animationStepID:I

.field private barTime:J

.field private closeMenu:Z

.field private drawBar:Z

.field private iTextH:I

.field private iTextW:I

.field private keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keys123:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keysNUM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keysSHIFT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    .line 35
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    .line 38
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->colorPickerMode:Z

    .line 39
    const/4 v1, -0x1

    sput v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    .line 40
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->commandsMode:Z

    .line 41
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->rankSearch:Z

    .line 42
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->changeCivilizationNameMode:I

    .line 43
    sput v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->changeAllianceNameMode:I

    .line 44
    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->mapModeSearch:Z

    .line 45
    sput v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->changeProvinceNameMode:I

    .line 46
    sput v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->changeCityNameIDToo:I

    return-void
.end method

.method public constructor <init>()V
    .registers 30

    .line 48
    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Menu;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    .line 29
    const/4 v10, 0x0

    iput v10, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationStepID:I

    .line 31
    iput-boolean v10, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 50
    .local v11, "menuElements":Ljava/util/List;, "Ljava/util/List<Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;>;"
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "q"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "w"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "e"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "r"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "t"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "y"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "u"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "i"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "o"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "p"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "a"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "s"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "d"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "f"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "g"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "h"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "j"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "k"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "l"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "z"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "x"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "c"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "v"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "b"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "m"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "SH"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "<<"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "123"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "Space"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, ","

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const-string v1, "."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "Q"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "W"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "E"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "R"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "T"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "Y"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "U"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "I"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "O"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "P"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "A"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "S"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "D"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "F"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "G"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "H"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "J"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "K"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "L"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "Z"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "X"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "C"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "V"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "B"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "N"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    const-string v1, "M"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    const-string v1, "4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    const-string v1, "5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    const-string v1, "7"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    const-string v1, "8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    const-string v1, "9"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    const-string v1, "0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    const-string v1, "@"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    const-string v1, "#"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    const-string v1, ":"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    const-string v1, ";"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    const-string v1, "&"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    const-string v1, "_"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    const-string v1, "("

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    const-string v1, ")"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    const-string v1, "-"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    const-string v1, "+"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    const-string v1, "\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    const-string v1, "\""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    const-string v1, "%"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    const-string v1, "!"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    const-string v1, "?"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_279
    const/16 v1, 0xa

    const v12, 0x3f4ccccd  # 0.8f

    if-ge v0, v1, :cond_2c9

    .line 136
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;

    iget-object v3, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;->getWindowWidth()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0xb

    sub-int/2addr v3, v4

    div-int/2addr v3, v1

    mul-int v3, v3, v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int v4, v4, v0

    add-int v15, v3, v4

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    add-int v16, v3, v4

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;->getWindowWidth()I

    move-result v3

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0xb

    sub-int/2addr v3, v4

    div-int/lit8 v17, v3, 0xa

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    const/16 v20, 0x1

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;Z)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_279

    .line 139
    .end local v0  # "i":I
    :cond_2c9
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_2ca
    if-ge v0, v1, :cond_30b

    .line 140
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;->getWindowWidth()I

    move-result v4

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setPosX(I)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_2ca

    .line 143
    .end local v0  # "i":I
    :cond_30b
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_30c
    const/16 v1, 0x9

    if-ge v0, v1, :cond_35d

    .line 144
    new-instance v1, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;

    iget-object v2, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    add-int/lit8 v3, v0, 0xa

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v2

    mul-int v2, v2, v0

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int v3, v3, v0

    add-int v15, v2, v3

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v3, v3

    mul-float v3, v3, v12

    float-to-int v3, v3

    add-int v16, v2, v3

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v17

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    const/16 v20, 0x1

    move-object v13, v1

    invoke-direct/range {v13 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;Z)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_30c

    .line 147
    .end local v0  # "i":I
    :cond_35d
    const/16 v0, 0xa

    .restart local v0  # "i":I
    :goto_35f
    const/16 v1, 0x13

    if-ge v0, v1, :cond_3a2

    .line 148
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;->getWindowWidth()I

    move-result v3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setPosX(I)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_35f

    .line 151
    .end local v0  # "i":I
    :cond_3a2
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_3a3
    const/4 v2, 0x7

    if-ge v0, v2, :cond_3f5

    .line 152
    new-instance v2, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;

    iget-object v3, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    add-int/lit8 v4, v0, 0x13

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v3

    mul-int v3, v3, v0

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int v4, v4, v0

    add-int v15, v3, v4

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x6

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    add-int v16, v3, v4

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v17

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    const/16 v20, 0x1

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;Z)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a3

    .line 155
    .end local v0  # "i":I
    :cond_3f5
    const/16 v0, 0x13

    .restart local v0  # "i":I
    :goto_3f7
    const/16 v2, 0x1a

    if-ge v0, v2, :cond_43a

    .line 156
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;->getWindowWidth()I

    move-result v4

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setPosX(I)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f7

    .line 159
    .end local v0  # "i":I
    :cond_43a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;

    iget-object v3, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v3, v3

    mul-float v3, v3, v12

    float-to-int v3, v3

    add-int v16, v2, v3

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v17, v1, v2

    sget v18, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    const/16 v20, 0x1

    move-object v13, v0

    invoke-direct/range {v13 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;Z)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;

    iget-object v1, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const/16 v2, 0x1b

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const/16 v1, 0x19

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v3

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    add-int/2addr v3, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v5, v5

    mul-float v5, v5, v12

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;->getWindowWidth()I

    move-result v5

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosXE()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v1

    sub-int/2addr v5, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v5, v1

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;Z)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;

    iget-object v1, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const/16 v2, 0x1c

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    sget v15, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    add-int v16, v1, v2

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v1

    mul-int/lit8 v17, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v1, v1

    mul-float v1, v1, v12

    float-to-int v1, v1

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    move-object v13, v0

    move/from16 v18, v1

    invoke-direct/range {v13 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;Z)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;

    iget-object v1, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const/16 v2, 0x1d

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Ljava/lang/String;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v23, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    add-int v24, v1, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;->getWindowWidth()I

    move-result v1

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x5

    sub-int v25, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v1, v1

    mul-float v1, v1, v12

    float-to-int v1, v1

    sget-object v27, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    const/16 v28, 0x1

    move-object/from16 v21, v0

    move/from16 v26, v1

    invoke-direct/range {v21 .. v28}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;Z)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;

    iget-object v1, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const/16 v2, 0x1e

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x3

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;->getWindowWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x5

    sub-int v15, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    add-int v16, v1, v2

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v17

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v1, v1

    mul-float v1, v1, v12

    float-to-int v1, v1

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    move-object v13, v0

    move/from16 v18, v1

    invoke-direct/range {v13 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;Z)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;

    iget-object v1, v9, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    const/16 v2, 0x1f

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Ljava/lang/String;

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x4

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;->getWindowWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x5

    sub-int v23, v1, v2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    add-int v24, v1, v2

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v25

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v1, v1

    mul-float v1, v1, v12

    float-to-int v1, v1

    sget-object v27, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    move-object/from16 v21, v0

    move/from16 v26, v1

    invoke-direct/range {v21 .. v28}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;Z)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;

    const/16 v21, 0x0

    move-object/from16 v1, v21

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;->getWindowWidth()I

    move-result v1

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    sub-int v15, v1, v2

    sget v16, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v1

    mul-int/lit8 v17, v1, 0x2

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v1, v1

    mul-float v1, v1, v12

    float-to-int v1, v1

    sget-object v19, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD_SAVE:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    move-object v13, v0

    move-object/from16 v14, v21

    move/from16 v18, v1

    invoke-direct/range {v13 .. v20}, Lage/of/civilizations2/jakowski/lukasz/Button/Button_Keyboard;-><init>(Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;Z)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/Keyboard$1;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;->getWindowWidth()I

    move-result v0

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x3

    sub-int v3, v0, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v0, v0

    mul-float v0, v0, v12

    float-to-int v6, v0

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD_SAVE:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Keyboard$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Keyboard;Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;Z)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v13, Lage/of/civilizations2/jakowski/lukasz/Keyboard$2;

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;->getWindowWidth()I

    move-result v0

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    sget v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v3, v0, v1

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getWidthE()I

    move-result v5

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->BUTTON_H:I

    int-to-float v0, v0

    mul-float v0, v0, v12

    float-to-int v6, v0

    sget-object v7, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD_SAVE:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Keyboard$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Keyboard;Ljava/lang/String;IIIILage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;Z)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;

    sget v0, Lage/of/civilizations2/jakowski/lukasz/AoCGame;->LEFT:I

    add-int/lit8 v2, v0, 0x0

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->GAMEHEIGHT:I

    sget v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v3

    sub-int v3, v0, v3

    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/Menus/Budget/Menu_InGame_FA_Top;->getWindowWidth()I

    move-result v4

    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v0, v0, 0x2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v5

    add-int/2addr v0, v5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v5

    add-int/2addr v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v6, v11

    invoke-virtual/range {v0 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->initMenu(Lage/of/civilizations2/jakowski/lukasz/Title/TitleM;IIIILjava/util/List;ZZ)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->updateLang()V

    .line 188
    invoke-static {}, Lage/of/civilizations2/jakowski/lukasz/CFG;->updateKeyboard_Actions()V

    .line 189
    return-void
.end method

.method private final resetAnimation()V
    .registers 2

    .line 431
    const/4 v0, 0x0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationStepID:I

    .line 432
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu:Z

    if-nez v0, :cond_d

    .line 433
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeightM()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    .line 436
    :cond_d
    return-void
.end method

.method private final updateChangePosY()V
    .registers 8

    .line 364
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationStepID:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, 0x42c80000  # 100.0f

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_a2

    goto/16 :goto_7c

    .line 387
    :pswitch_c  #0xd
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    goto/16 :goto_7c

    .line 384
    :pswitch_10  #0x6, 0x7
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeightM()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41700000  # 15.0f

    mul-float v5, v5, v6

    div-float/2addr v5, v3

    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu:Z

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    const/4 v2, 0x1

    :goto_23
    int-to-float v2, v2

    mul-float v5, v5, v2

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    .line 385
    goto :goto_7c

    .line 380
    :pswitch_2b  #0x4, 0x5, 0x8, 0x9
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeightM()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41200000  # 10.0f

    mul-float v5, v5, v6

    div-float/2addr v5, v3

    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu:Z

    if-eqz v3, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x1

    :goto_3e
    int-to-float v2, v2

    mul-float v5, v5, v2

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    .line 381
    goto :goto_7c

    .line 374
    :pswitch_46  #0x2, 0x3, 0xa, 0xb
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeightM()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40a00000  # 5.0f

    mul-float v5, v5, v6

    div-float/2addr v5, v3

    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu:Z

    if-eqz v3, :cond_58

    goto :goto_59

    :cond_58
    const/4 v2, 0x1

    :goto_59
    int-to-float v2, v2

    mul-float v5, v5, v2

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    .line 375
    goto :goto_7c

    .line 368
    :pswitch_61  #0x0, 0x1, 0xc
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeightM()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40200000  # 2.5f

    mul-float v5, v5, v6

    div-float/2addr v5, v3

    iget-boolean v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu:Z

    if-eqz v3, :cond_73

    goto :goto_74

    :cond_73
    const/4 v2, 0x1

    :goto_74
    int-to-float v2, v2

    mul-float v5, v5, v2

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    .line 369
    nop

    .line 390
    :goto_7c
    sget v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->iNumOfFPS:I

    const/16 v2, 0x16

    const/16 v3, 0xd

    if-ge v0, v2, :cond_88

    .line 391
    iput v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationStepID:I

    .line 392
    iput v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    .line 395
    :cond_88
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu:Z

    if-eqz v0, :cond_99

    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationStepID:I

    if-ne v0, v3, :cond_99

    .line 396
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeightM()I

    move-result v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    .line 397
    invoke-super {p0, v1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setVisibleM(Z)V

    .line 400
    :cond_99
    iget v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationStepID:I

    add-int/2addr v0, v4

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationStepID:I

    .line 401
    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->setRenderO(Z)V

    .line 402
    return-void

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_61  #00000000
        :pswitch_61  #00000001
        :pswitch_46  #00000002
        :pswitch_46  #00000003
        :pswitch_2b  #00000004
        :pswitch_2b  #00000005
        :pswitch_10  #00000006
        :pswitch_10  #00000007
        :pswitch_2b  #00000008
        :pswitch_2b  #00000009
        :pswitch_46  #0000000a
        :pswitch_46  #0000000b
        :pswitch_61  #0000000c
        :pswitch_c  #0000000d
    .end packed-switch
.end method

.method private final writeNumber(I)V
    .registers 4
    .param p1, "iID"  # I

    .line 329
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;->action(Ljava/lang/String;)V

    .line 330
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 5

    .line 337
    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    if-eqz v1, :cond_d

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD_ACTIVE:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    goto :goto_f

    :cond_d
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    :goto_f
    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTypeOfButton(Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;)V

    .line 338
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    if-eqz v0, :cond_5e

    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 340
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD_NUM:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTypeOfButton(Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;)V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 344
    .end local v0  # "i":I
    :cond_3a
    const/4 v0, 0x0

    .line 346
    .restart local v0  # "i":I
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "keysNum":I
    :goto_41
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5d

    .line 347
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    iget-object v3, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 349
    .end local v0  # "i":I
    .end local v1  # "keysNum":I
    :cond_5d
    goto :goto_c0

    .line 350
    :cond_5e
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_5f
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_89

    .line 351
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    if-eqz v2, :cond_72

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    goto :goto_74

    :cond_72
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    :goto_74
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTypeOfButton(Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;)V

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 355
    .end local v0  # "i":I
    :cond_89
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .restart local v0  # "i":I
    :goto_8f
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_c0

    .line 356
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    if-eqz v2, :cond_a9

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    goto :goto_ab

    :cond_a9
    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    :goto_ab
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTypeOfButton(Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;)V

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    .line 361
    .end local v0  # "i":I
    :cond_c0
    :goto_c0
    return-void
.end method

.method public final actionEL(I)V
    .registers 7
    .param p1, "iID"  # I

    .line 238
    const-string v0, ": "

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_14c

    .line 260
    :pswitch_6  #0x1e, 0x1f
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    const/16 v2, 0xa

    if-eqz v0, :cond_ee

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_ee

    .line 261
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    if-eqz v0, :cond_d5

    .line 262
    if-ge p1, v2, :cond_c1

    .line 263
    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->writeNumber(I)V

    goto/16 :goto_124

    .line 296
    :pswitch_1b  #0x22
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object v1

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/utils/Clipboard;->setContents(Ljava/lang/String;)V

    .line 297
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "Copy"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;)V

    .line 298
    return-void

    .line 292
    :pswitch_4b  #0x21
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object v1

    invoke-interface {v1}, Lcom/badlogic/gdx/utils/Clipboard;->getContents()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    .line 293
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->toastM:Lage/of/civilizations2/jakowski/lukasz/Toast;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v4, "Paste"

    invoke-virtual {v3, v4}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lage/of/civilizations2/jakowski/lukasz/Toast;->addM(Ljava/lang/String;)V

    .line 294
    return-void

    .line 287
    :pswitch_7c  #0x20
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardSave:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    invoke-interface {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;->action()V

    .line 288
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu()V

    .line 289
    const/4 v0, -0x1

    sput v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    .line 290
    return-void

    .line 253
    :pswitch_88  #0x1d
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_124

    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_124

    .line 254
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    const-string v2, " "

    invoke-interface {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;->action(Ljava/lang/String;)V

    goto/16 :goto_124

    .line 246
    :pswitch_aa  #0x1c
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    if-gez v0, :cond_b6

    .line 247
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    xor-int/2addr v0, v1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    .line 248
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->actionCloseMenu()V

    .line 251
    :cond_b6
    return-void

    .line 243
    :pswitch_b7  #0x1b
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardDelete:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;

    invoke-interface {v0}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action;->action()V

    .line 244
    goto :goto_124

    .line 240
    :pswitch_bd  #0x1a
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shiftAction()V

    .line 241
    return-void

    .line 264
    :cond_c1
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    if-gez v0, :cond_124

    .line 265
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    add-int/lit8 v3, p1, -0xa

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;->action(Ljava/lang/String;)V

    goto :goto_124

    .line 267
    :cond_d5
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    if-gez v0, :cond_124

    .line 268
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;->action(Ljava/lang/String;)V

    .line 269
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    if-eqz v0, :cond_124

    .line 270
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shiftAction()V

    goto :goto_124

    .line 273
    :cond_ee
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    if-eqz v0, :cond_10c

    .line 274
    if-ge p1, v2, :cond_f8

    .line 275
    invoke-direct {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->writeNumber(I)V

    goto :goto_124

    .line 276
    :cond_f8
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    if-gez v0, :cond_124

    .line 277
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys123:Ljava/util/List;

    add-int/lit8 v3, p1, -0xa

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;->action(Ljava/lang/String;)V

    goto :goto_124

    .line 279
    :cond_10c
    sget v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->activeColor_RGB_ID:I

    if-gez v0, :cond_124

    .line 280
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->keyboardWrite:Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/CFG$Keyboard_Action_Write;->action(Ljava/lang/String;)V

    .line 281
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    if-eqz v0, :cond_124

    .line 282
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shiftAction()V

    .line 301
    :cond_124
    :goto_124
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 302
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->iTextW:I

    .line 303
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->iTextH:I

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->barTime:J

    .line 305
    iput-boolean v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->drawBar:Z

    .line 306
    return-void

    nop

    :pswitch_data_14c
    .packed-switch 0x1a
        :pswitch_bd  #0000001a
        :pswitch_b7  #0000001b
        :pswitch_aa  #0000001c
        :pswitch_88  #0000001d
        :pswitch_6  #0000001e
        :pswitch_6  #0000001f
        :pswitch_7c  #00000020
        :pswitch_4b  #00000021
        :pswitch_1b  #00000022
    .end packed-switch
.end method

.method public final closeMenu()V
    .registers 2

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu:Z

    .line 406
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->resetAnimation()V

    .line 407
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IZ)V
    .registers 18
    .param p1, "oSB"  # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"  # I
    .param p3, "sliderMenuIsActive"  # Z

    .line 200
    move-object v0, p0

    move-object v9, p1

    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->updateChangePosY()V

    .line 201
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 202
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdgeLine:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdgeLine:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidthM()I

    move-result v2

    sget v5, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdgeLine:I

    invoke-static {v5}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeightM()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 203
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdgeLine:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidthM()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdgeLine:I

    invoke-static {v3}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v3

    invoke-virtual {v3}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdgeLine:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v4, v2

    sget v2, Lage/of/civilizations2/jakowski/lukasz/Images;->gameTopEdgeLine:I

    invoke-static {v2}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Image;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeightM()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 204
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3ccccccd  # 0.025f

    const v3, 0x3cf5c28f  # 0.03f

    const v4, 0x3dbc6a7f  # 0.092f

    const v10, 0x3ecccccd  # 0.4f

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 205
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v2, v4

    const/16 v11, 0x20

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidthM()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeightM()I

    move-result v2

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v6

    sub-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 206
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e189899

    const v3, 0x3e34b4b5

    const v4, 0x3e5cdcdd

    const v12, 0x3f266666  # 0.65f

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 207
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pattern:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pattern:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v2, v4

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidthM()I

    move-result v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getHeightM()I

    move-result v2

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v6

    invoke-virtual {v6}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v6

    sub-int/2addr v2, v6

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->draw2O(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 208
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 209
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_BOX_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e8f5c29  # 0.28f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 210
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->sliderGradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidthM()I

    move-result v5

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v2

    sget v6, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    add-int/lit8 v6, v2, -0x4

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 211
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3ed9999a  # 0.425f

    const/4 v13, 0x0

    invoke-direct {v1, v13, v13, v13, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 212
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v2

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidthM()I

    move-result v2

    add-int/lit8 v5, v2, -0x4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v2, 0x2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 213
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v2

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v2

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->gradient:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidthM()I

    move-result v2

    add-int/lit8 v5, v2, -0x4

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 214
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEW_GAME_EDGE_LINE2:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEW_GAME_EDGE_LINE2:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_NEW_GAME_EDGE_LINE2:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 215
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidthM()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 216
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v2

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->pix255:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidthM()I

    move-result v2

    add-int/lit8 v5, v2, -0x4

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 217
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->COLOR_FLAG_FRAME:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 218
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidthM()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 219
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f400000  # 0.75f

    invoke-direct {v1, v13, v13, v13, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 220
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v3

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidthM()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 221
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v13, v13, v13, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 222
    sget v1, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v1}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v1

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidthM()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v2

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/Images;->line32Off1:I

    invoke-static {v4}, Lage/of/civilizations2/jakowski/lukasz/IMGManager;->getIMG(I)Lage/of/civilizations2/jakowski/lukasz/Image;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Image;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0, v11}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v4, v2, -0x2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getWidthM()I

    move-result v2

    div-int/lit8 v5, v2, 0x2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lage/of/civilizations2/jakowski/lukasz/Image;->drawO(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 223
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 224
    const/4 v1, 0x0

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    move/from16 v3, p3

    invoke-virtual {p0, p1, v1, v2, v3}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->drawMenuElements(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 225
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v2

    sget v4, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int v2, v2, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElemsSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElemsSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v5

    invoke-virtual {v5}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->iTextH:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x3f2babac

    const v8, 0x3ee2e2e3

    const v10, 0x3f50d0d1

    invoke-direct {v5, v10, v6, v8, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v1, v2, v4, v5}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 226
    iget-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->barTime:J

    iget-boolean v4, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->drawBar:Z

    if-eqz v4, :cond_398

    const/16 v4, 0x2bc

    goto :goto_39a

    :cond_398
    const/16 v4, 0x28a

    :goto_39a
    int-to-long v4, v4

    add-long/2addr v1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-gez v6, :cond_3b0

    .line 227
    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->drawBar:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->drawBar:Z

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->barTime:J

    .line 231
    :cond_3b0
    iget-boolean v1, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->drawBar:Z

    if-eqz v1, :cond_3f5

    .line 232
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosX()I

    move-result v1

    sget v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->PADD:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->iTextW:I

    add-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElemsSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v2

    invoke-virtual {v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElemsSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v4

    invoke-virtual {v4}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->getHeightE()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->iTextH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iget v4, v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->animationChangePosY:I

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getPosY()I

    move-result v4

    add-int/2addr v2, v4

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const-string v5, "|"

    invoke-static {p1, v5, v1, v2, v4}, Lage/of/civilizations2/jakowski/lukasz/CFG;->drawTextDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 235
    :cond_3f5
    return-void
.end method

.method public final onBackPressed()V
    .registers 1

    .line 333
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu()V

    .line 334
    return-void
.end method

.method public onMenuPressed()V
    .registers 4

    .line 410
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 411
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->iTextW:I

    .line 412
    return-void
.end method

.method public final setVisibleM(Z)V
    .registers 6
    .param p1, "visible"  # Z

    .line 415
    const/4 v0, 0x0

    if-eqz p1, :cond_32

    .line 416
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Input;->setOnscreenKeyboardVisible(Z)V

    .line 417
    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->fontMain:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v3, Lage/of/civilizations2/jakowski/lukasz/CFG;->keybMess:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 418
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->iTextW:I

    .line 419
    sget-object v0, Lage/of/civilizations2/jakowski/lukasz/CFG;->glyphLay:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    float-to-int v0, v0

    iput v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->iTextH:I

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->barTime:J

    .line 421
    iput-boolean v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->drawBar:Z

    .line 422
    invoke-super {p0, p1}, Lage/of/civilizations2/jakowski/lukasz/Menu;->setVisibleM(Z)V

    goto :goto_37

    .line 424
    :cond_32
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Input;->setOnscreenKeyboardVisible(Z)V

    .line 426
    :goto_37
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->closeMenu:Z

    .line 427
    invoke-direct {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->resetAnimation()V

    .line 428
    return-void
.end method

.method public final shiftAction()V
    .registers 4

    .line 309
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    .line 310
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 311
    sput-boolean v1, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    .line 312
    invoke-virtual {p0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->actionCloseMenu()V

    .line 315
    :cond_10
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-boolean v2, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    if-eqz v2, :cond_1d

    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD_ACTIVE:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    goto :goto_1f

    :cond_1d
    sget-object v2, Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;->KEYBOARD_OPTIONS:Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;

    :goto_1f
    invoke-virtual {v0, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTypeOfButton(Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$TypeOfButton;)V

    .line 316
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->shift:Z

    if-eqz v0, :cond_4c

    .line 317
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_30
    move v0, v1

    .local v0, "i":I
    :goto_31
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 318
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .end local v0  # "i":I
    :cond_4b
    goto :goto_71

    .line 321
    :cond_4c
    sget-boolean v0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->numbers:Z

    if-eqz v0, :cond_56

    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysNUM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_56
    move v0, v1

    .restart local v0  # "i":I
    :goto_57
    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keysSHIFT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_71

    .line 322
    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v1

    iget-object v2, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 326
    .end local v0  # "i":I
    :cond_71
    :goto_71
    return-void
.end method

.method public updateLang()V
    .registers 4

    .line 192
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "Shift"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {p0, v2}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->keys:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 194
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    sget-object v1, Lage/of/civilizations2/jakowski/lukasz/CFG;->lang:Lage/of/civilizations2/jakowski/lukasz/LangManager;

    const-string v2, "Save"

    invoke-virtual {v1, v2}, Lage/of/civilizations2/jakowski/lukasz/LangManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 195
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    const-string v1, "Ctrl + C"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 196
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lage/of/civilizations2/jakowski/lukasz/Keyboard;->getMenuElem(I)Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;

    move-result-object v0

    const-string v1, "Ctrl + V"

    invoke-virtual {v0, v1}, Lage/of/civilizations2/jakowski/lukasz/Button/MenuElemUI;->setTextE(Ljava/lang/String;)V

    .line 197
    return-void
.end method

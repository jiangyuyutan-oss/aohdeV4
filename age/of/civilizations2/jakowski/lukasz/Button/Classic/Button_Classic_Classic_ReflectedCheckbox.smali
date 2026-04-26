.class public Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;
.super Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic;
.source "Button_Classic_Classic_ReflectedCheckbox.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIZ)V
    .registers 8
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I
    .param p7, "isClickable"  # Z

    .line 18
    invoke-direct/range {p0 .. p7}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZZ)V
    .registers 9
    .param p1, "sText"  # Ljava/lang/String;
    .param p2, "iTextPositionX"  # I
    .param p3, "iPosX"  # I
    .param p4, "iPosY"  # I
    .param p5, "iWidth"  # I
    .param p6, "iHeight"  # I
    .param p7, "isClickable"  # Z
    .param p8, "checkboxState"  # Z

    .line 22
    invoke-direct/range {p0 .. p8}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic;-><init>(Ljava/lang/String;IIIIIZZ)V

    .line 23
    return-void
.end method


# virtual methods
.method public buildCheckbox()Lage/of/civilizations2/jakowski/lukasz/Button/ButtonM$Checkbox;
    .registers 2

    .line 29
    iget-boolean v0, p0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;->checkbox:Z

    if-eqz v0, :cond_a

    .line 30
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox$1;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox$1;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;)V

    return-object v0

    .line 52
    :cond_a
    new-instance v0, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox$2;

    invoke-direct {v0, p0}, Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox$2;-><init>(Lage/of/civilizations2/jakowski/lukasz/Button/Classic/Button_Classic_Classic_ReflectedCheckbox;)V

    return-object v0
.end method

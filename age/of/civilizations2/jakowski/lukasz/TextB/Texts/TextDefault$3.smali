.class Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault$3;
.super Ljava/lang/Object;
.source "TextDefault.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault;->updateTextPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault;

    .line 126
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .registers 3

    .line 129
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault;->getWidthE()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault;->iTextWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

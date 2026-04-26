.class Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle$3;
.super Ljava/lang/Object;
.source "TextStyle.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle;->updateTextPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle;

    .line 130
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .registers 3

    .line 133
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle;->getWidthE()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle;->iTextWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.class Lage/of/civilizations2/jakowski/lukasz/TextB/Text$3;
.super Ljava/lang/Object;
.source "Text.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->updateTextPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Text;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Text;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Text;

    .line 131
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Text;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .registers 3

    .line 134
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Text;

    invoke-virtual {v0}, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->getWidthE()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Text$3;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Text;

    iget v1, v1, Lage/of/civilizations2/jakowski/lukasz/TextB/Text;->iTextWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

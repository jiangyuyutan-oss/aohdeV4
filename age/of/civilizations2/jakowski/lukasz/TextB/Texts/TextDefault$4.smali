.class Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault$4;
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

    .line 134
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .registers 2

    .line 137
    iget-object v0, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault$4;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault;

    iget v0, v0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextDefault;->iTextPositionX:I

    return v0
.end method

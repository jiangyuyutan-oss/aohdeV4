.class Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOld$2;
.super Ljava/lang/Object;
.source "TextOld.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOld;-><init>(Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOld;


# direct methods
.method constructor <init>(Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOld;)V
    .registers 2
    .param p1, "this$0"  # Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOld;

    .line 57
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOld$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method

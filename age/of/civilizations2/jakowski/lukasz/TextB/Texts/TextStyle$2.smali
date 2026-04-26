.class Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle$2;
.super Ljava/lang/Object;
.source "TextStyle.java"

# interfaces
.implements Lage/of/civilizations2/jakowski/lukasz/TextB/Text$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle;-><init>(Ljava/lang/String;III)V
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

    .line 61
    iput-object p1, p0, Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle$2;->this$0:Lage/of/civilizations2/jakowski/lukasz/TextB/Texts/TextStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .registers 2

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.class Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;
.super Ljava/lang/Object;
.source "DefaultAndroidInput.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;)V
    .registers 2

    .line 1015
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "arg0"  # Landroid/hardware/Sensor;
    .param p2, "arg1"  # I

    .line 1022
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 1026
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_41

    .line 1027
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    sget-object v4, Lcom/badlogic/gdx/Input$Orientation;->Portrait:Lcom/badlogic/gdx/Input$Orientation;

    if-ne v0, v4, :cond_22

    .line 1028
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v4, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerValues:[F

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v5, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerValues:[F

    array-length v5, v5

    invoke-static {v0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_41

    .line 1030
    :cond_22
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerValues:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    aput v4, v0, v2

    .line 1031
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerValues:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    neg-float v4, v4

    aput v4, v0, v3

    .line 1032
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->accelerometerValues:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    aput v4, v0, v1

    .line 1035
    :cond_41
    :goto_41
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v1, :cond_57

    .line 1036
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v4, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->magneticFieldValues:[F

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v5, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->magneticFieldValues:[F

    array-length v5, v5

    invoke-static {v0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1038
    :cond_57
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_96

    .line 1039
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    sget-object v4, Lcom/badlogic/gdx/Input$Orientation;->Portrait:Lcom/badlogic/gdx/Input$Orientation;

    if-ne v0, v4, :cond_77

    .line 1040
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v4, v4, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeValues:[F

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v5, v5, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeValues:[F

    array-length v5, v5

    invoke-static {v0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_96

    .line 1042
    :cond_77
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeValues:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    aput v4, v0, v2

    .line 1043
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeValues:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    neg-float v4, v4

    aput v4, v0, v3

    .line 1044
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->gyroscopeValues:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    aput v4, v0, v1

    .line 1047
    :cond_96
    :goto_96
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v4, 0xb

    if-ne v0, v4, :cond_d6

    .line 1048
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    sget-object v4, Lcom/badlogic/gdx/Input$Orientation;->Portrait:Lcom/badlogic/gdx/Input$Orientation;

    if-ne v0, v4, :cond_b7

    .line 1049
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v1, v1, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorValues:[F

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v3, v3, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorValues:[F

    array-length v3, v3

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d6

    .line 1051
    :cond_b7
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorValues:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    aput v4, v0, v2

    .line 1052
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorValues:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v4, v2

    neg-float v2, v2

    aput v2, v0, v3

    .line 1053
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/DefaultAndroidInput;->rotationVectorValues:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    aput v2, v0, v1

    .line 1056
    :cond_d6
    :goto_d6
    return-void
.end method

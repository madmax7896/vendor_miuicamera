.class Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "V6GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private mHandleConfirmTap:Z

.field final synthetic this$0:Lcom/android/camera/ui/V6GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;)V

    return-void
.end method

.method private handleSingleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$500(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {p0, v0, p1, v1}, Lcom/android/camera/module/Module;->onSingleTapUp(IIZ)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->mHandleConfirmTap:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->getInvertFlag()I

    move-result p0

    .line 3
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    move p1, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    return v1

    :cond_1
    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "CameraGestureRecognizer"

    const-string v1, "onLongPress"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$500(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/android/camera/module/Module;->onLongPress(FF)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$700(Lcom/android/camera/ui/V6GestureRecognizer;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$800(Lcom/android/camera/ui/V6GestureRecognizer;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "|distanceX:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "|distanceY:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraGestureRecognizer"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    neg-float p2, p4

    invoke-static {p1, p2}, Lcom/android/camera/ui/V6GestureRecognizer;->access$916(Lcom/android/camera/ui/V6GestureRecognizer;F)F

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$900(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42a00000    # 80.0f

    invoke-static {p2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    return v1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result p1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_3

    return v1

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_4

    return v1

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    neg-float p2, p3

    invoke-static {p1, p2}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1016(Lcom/android/camera/ui/V6GestureRecognizer;F)F

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1100(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result p1

    const/16 p2, 0x64

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$400(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result p1

    int-to-float p1, p1

    iget-object p3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p3}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1000(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p3

    iget-object p4, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p4}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1000(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p4

    mul-float/2addr p3, p4

    iget-object p4, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p4}, Lcom/android/camera/ui/V6GestureRecognizer;->access$900(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p4

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$900(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result v0

    mul-float/2addr p4, v0

    add-float/2addr p3, p4

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_6

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1000(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget-object p4, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p4}, Lcom/android/camera/ui/V6GestureRecognizer;->access$900(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    cmpl-float p3, p3, p4

    if-lez p3, :cond_5

    move p3, p2

    goto :goto_0

    :cond_5
    const/16 p3, 0xc8

    :goto_0
    invoke-static {p1, p3}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1102(Lcom/android/camera/ui/V6GestureRecognizer;I)I

    .line 11
    :cond_6
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1100(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result p1

    if-eq p1, p2, :cond_7

    return v1

    :cond_7
    const/4 p1, -0x1

    const/16 p2, 0x23

    .line 12
    iget-object p3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p3}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1000(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p3

    int-to-float p2, p2

    invoke-static {p2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p4

    int-to-float p4, p4

    cmpl-float p3, p3, p4

    const/4 p4, 0x5

    const/4 v0, 0x1

    if-lez p3, :cond_8

    iget-object p3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p3}, Lcom/android/camera/ui/V6GestureRecognizer;->access$900(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p3

    invoke-static {p2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    cmpg-float p3, p3, v2

    if-gez p3, :cond_8

    const/4 p1, 0x3

    .line 13
    iget-object p2, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p2, v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$802(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    goto :goto_1

    .line 14
    :cond_8
    iget-object p3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p3}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1000(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p3

    invoke-static {p2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float p3, p3, v2

    if-gez p3, :cond_9

    iget-object p3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p3}, Lcom/android/camera/ui/V6GestureRecognizer;->access$900(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p3

    invoke-static {p2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    cmpl-float p2, p3, p2

    if-lez p2, :cond_9

    .line 15
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1, v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$802(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move p1, p4

    .line 16
    :cond_9
    :goto_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 p3, 0xb7

    .line 17
    invoke-virtual {p2, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$HandlerSwitcher;

    if-eqz p2, :cond_a

    .line 18
    invoke-interface {p2, p1}, Lcom/android/camera/protocol/ModeProtocol$HandlerSwitcher;->onHandleSwitcher(I)Z

    move-result p2

    if-eqz p2, :cond_a

    return v0

    .line 19
    :cond_a
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 p3, 0xc2

    invoke-virtual {p2, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p2, :cond_b

    .line 20
    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->isBeautyPanelShow()Z

    move-result p2

    if-eqz p2, :cond_b

    return v0

    .line 21
    :cond_b
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 p3, 0xfd

    invoke-virtual {p2, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;

    if-eqz p2, :cond_c

    .line 22
    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->isWatermarkPanelShow()Z

    move-result p2

    if-eqz p2, :cond_c

    return v0

    .line 23
    :cond_c
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 p3, 0xb3

    .line 24
    invoke-virtual {p2, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    .line 25
    iget-object p3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p3}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object p3

    if-eqz p3, :cond_d

    iget-object p0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result p0

    const/16 p3, 0xb4

    if-ne p0, p3, :cond_d

    if-ne p1, p4, :cond_d

    return v0

    :cond_d
    if-eqz p2, :cond_e

    .line 26
    invoke-interface {p2}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->canSwipeChangeMode()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 27
    invoke-interface {p2, p1, v1}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->changeModeByGravity(II)V

    return v0

    :cond_e
    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->isEffectViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->mHandleConfirmTap:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->handleSingleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "CameraGestureRecognizer"

    const-string v1, "onSingleTapUp"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->isEffectViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$500(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->mHandleConfirmTap:Z

    return v0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->handleSingleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.class public Lcom/android/camera/module/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# static fields
.field public static final MODULE_INDEX_NONE:I = -0x1

.field private static sCurrentModuleIndex:I = -0x1

.field private static sInstance:Lcom/android/camera/module/ModuleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/ModuleManager;

    invoke-direct {v0}, Lcom/android/camera/module/ModuleManager;-><init>()V

    sput-object v0, Lcom/android/camera/module/ModuleManager;->sInstance:Lcom/android/camera/module/ModuleManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createModuleByAlias(Ljava/lang/String;)Lcom/android/camera/module/Module;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static getActiveModuleIndex()I
    .locals 1

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    return v0
.end method

.method private static getCameraByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/Camera2Module;

    invoke-direct {v0}, Lcom/android/camera/module/Camera2Module;-><init>()V

    return-object v0
.end method

.method public static getModuleByIndex(I)Lcom/android/camera/module/Module;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_1
    new-instance p0, Lcom/android/camera/features/mimoji2/module/MimojiModule;

    invoke-direct {p0}, Lcom/android/camera/features/mimoji2/module/MimojiModule;-><init>()V

    return-object p0

    .line 2
    :pswitch_2
    new-instance p0, Lcom/android/camera/module/MiLiveModule;

    invoke-direct {p0}, Lcom/android/camera/module/MiLiveModule;-><init>()V

    return-object p0

    :pswitch_3
    const-string p0, "com.android.camera.features.fun2.Fun2Module"

    .line 3
    invoke-static {p0}, Lcom/android/camera/module/ModuleManager;->createModuleByAlias(Ljava/lang/String;)Lcom/android/camera/module/Module;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_4
    new-instance p0, Lcom/android/camera/module/LiveModuleSubVV;

    invoke-direct {p0}, Lcom/android/camera/module/LiveModuleSubVV;-><init>()V

    return-object p0

    .line 5
    :pswitch_5
    new-instance p0, Lcom/android/camera/module/WideSelfieModule;

    invoke-direct {p0}, Lcom/android/camera/module/WideSelfieModule;-><init>()V

    return-object p0

    .line 6
    :pswitch_6
    new-instance p0, Lcom/android/camera/module/LiveModule;

    invoke-direct {p0}, Lcom/android/camera/module/LiveModule;-><init>()V

    return-object p0

    .line 7
    :pswitch_7
    new-instance p0, Lcom/android/camera/module/Panorama3Module;

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;-><init>()V

    return-object p0

    .line 8
    :pswitch_8
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getCameraByDevice()Lcom/android/camera/module/Module;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_9
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->getVideoByDevice()Lcom/android/camera/module/Module;

    move-result-object p0

    return-object p0

    .line 10
    :pswitch_a
    new-instance p0, Lcom/android/camera/module/FunModule;

    invoke-direct {p0}, Lcom/android/camera/module/FunModule;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getVideoByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/VideoModule;

    invoke-direct {v0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-object v0
.end method

.method public static instance()Lcom/android/camera/module/ModuleManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/ModuleManager;->sInstance:Lcom/android/camera/module/ModuleManager;

    return-object v0
.end method

.method public static isCameraModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCapture()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProPhotoModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperNightScene()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isUltraPixel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isDocumentMode()Z
    .locals 1

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isDocumentModeOn(I)Z

    move-result v0

    return v0
.end method

.method public static isFastMotionModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFunARModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xb1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isFunModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIDCardMode()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInVideoCategory()Z
    .locals 1

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    invoke-static {v0}, Lcom/android/camera/module/ModuleManager;->isVideoCategory(I)Z

    move-result v0

    return v0
.end method

.method public static isLiveModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xae

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMiLiveModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xb7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPanoramaModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPortraitModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xab

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isProModule()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProPhotoModule()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isProPhotoModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isProVideoModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSquareModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSuperNightScene()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xad

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUltraPixel()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xaf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoCategory(I)Z
    .locals 1

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xac

    if-eq p0, v0, :cond_0

    const/16 v0, 0xae

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isVideoModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoNewSlowMotion()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xac

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWideSelfieModule()Z
    .locals 2

    .line 1
    sget v0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setActiveModuleIndex(I)V
    .locals 0

    .line 1
    sput p0, Lcom/android/camera/module/ModuleManager;->sCurrentModuleIndex:I

    return-void
.end method

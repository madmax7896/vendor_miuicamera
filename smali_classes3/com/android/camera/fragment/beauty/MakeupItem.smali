.class public Lcom/android/camera/fragment/beauty/MakeupItem;
.super Ljava/lang/Object;
.source "MakeupItem.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private cameraBeautyParameterType:Lcom/android/camera/fragment/beauty/CameraBeautyParameterType;

.field private mImageResource:I

.field private mTextResource:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/android/camera/fragment/beauty/MakeupItem;->mImageResource:I

    .line 7
    iput p2, p0, Lcom/android/camera/fragment/beauty/MakeupItem;->mTextResource:I

    return-void
.end method

.method public constructor <init>(IILcom/android/camera/fragment/beauty/CameraBeautyParameterType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/beauty/MakeupItem;->mImageResource:I

    .line 3
    iput p2, p0, Lcom/android/camera/fragment/beauty/MakeupItem;->mTextResource:I

    .line 4
    iput-object p3, p0, Lcom/android/camera/fragment/beauty/MakeupItem;->cameraBeautyParameterType:Lcom/android/camera/fragment/beauty/CameraBeautyParameterType;

    return-void
.end method


# virtual methods
.method public getCameraBeautyParameterType()Lcom/android/camera/fragment/beauty/CameraBeautyParameterType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/MakeupItem;->cameraBeautyParameterType:Lcom/android/camera/fragment/beauty/CameraBeautyParameterType;

    return-object p0
.end method

.method public getImageResource()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/beauty/MakeupItem;->mImageResource:I

    return p0
.end method

.method public getTextResource()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/beauty/MakeupItem;->mTextResource:I

    return p0
.end method

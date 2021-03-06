.class public Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentMimojiEdit.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$MimojiEditor;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# static fields
.field private static final EDIT_ABANDON:I = 0x4

.field private static final EDIT_ABANDON_CAPTURE:I = 0x3

.field private static final EDIT_BACK:I = 0x1

.field private static final EDIT_CANCEL:I = 0x5

.field private static final EDIT_RECAPTURE:I = 0x2

.field public static final EDIT_STATE_STEP1:I = 0x1

.field public static final EDIT_STATE_STEP2_1:I = 0x2

.field public static final EDIT_STATE_STEP2_2:I = 0x4

.field private static final EDIT_STATE_STEP3:I = 0x3

.field private static final EDIT_STATE_STEP4:I = 0x5

.field private static final FRAGMENT_INFO:I = 0xfa2

.field public static final FROM_ALL_PROCESS:I = 0x69

.field public static final TAG:Ljava/lang/String; = "FragmentMimojiEdit"


# instance fields
.field private fromTag:I

.field private mAvatar:Lcom/arcsoft/avatar/AvatarEngine;

.field private mAvatarEngineManager:Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

.field private mBackTextView:Landroid/widget/TextView;

.field private mClickCheck:Lcom/android/camera/fragment/mimoji/ClickCheck;

.field private mConfirmTextView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCurrentAlertDialog:Landroid/app/AlertDialog;

.field private mCurrentConfigPath:Ljava/lang/String;

.field private mCurrentTopPannelState:I

.field private mEditLevelListAdapter:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

.field private mEditState:Z

.field private mEditTextView:Landroid/widget/TextView;

.field private mEnterFromMimoji:Z

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mIsSaveBtnClicked:Z

.field private mIsShowDialog:Z

.field private mIsStartEdit:Z

.field private mLevelRecyleView:Landroid/support/v7/widget/RecyclerView;

.field private mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

.field private mMimojiEditViewLayout:Landroid/view/View;

.field private mMimojiEditViewStub:Landroid/view/ViewStub;

.field private mMimojiPageChangeAnimManager:Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;

.field private mMimojiTypeAdapter:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter<",
            "Lcom/android/camera/fragment/mimoji/MimojiTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field private mMimojiTypeSelectView:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;

.field private mMimojiTypeView:Landroid/widget/TextView;

.field private mOperateSelectLayout:Landroid/widget/LinearLayout;

.field private mPopSaveDeletePath:Ljava/lang/String;

.field private mReCaptureTextView:Landroid/widget/TextView;

.field private mRenderThread:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;

.field private mRlAllEditContent:Landroid/widget/LinearLayout;

.field private mSaveTextView:Landroid/widget/TextView;

.field private volatile mSetupCompleted:Z

.field private mSetupThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mCurrentTopPannelState:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditState:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEnterFromMimoji:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsSaveBtnClicked:Z

    const-string v1, ""

    .line 6
    iput-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mCurrentConfigPath:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mPopSaveDeletePath:Ljava/lang/String;

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsShowDialog:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mSetupCompleted:Z

    .line 10
    new-instance v0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$4;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$4;-><init>(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)V

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditViewLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Lcom/android/camera/ui/MimojiEditGLTextureView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRenderThread:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsStartEdit:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEnterFromMimoji:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mCurrentConfigPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsShowDialog:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiPageChangeAnimManager:Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditState:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->fromTag:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Lcom/arcsoft/avatar/AvatarEngine;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatar:Lcom/arcsoft/avatar/AvatarEngine;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mCurrentTopPannelState:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mPopSaveDeletePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditLevelListAdapter:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initConfigList()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRenderThread:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;

    iget-boolean v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEnterFromMimoji:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mCurrentConfigPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->TempOriginalConfigPath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->initAvatar(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;

    invoke-direct {v0}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatar:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar/AvatarEngine;->getConfigValue(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatarEngineManager:Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->setASAvatarConfigValue(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatar:Lcom/arcsoft/avatar/AvatarEngine;

    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatarEngineManager:Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    invoke-virtual {v1}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getASAvatarConfigValue()Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;

    move-result-object v1

    iget v1, v1, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;->gender:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar/AvatarEngine;->getSupportConfigType(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatarEngineManager:Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->setConfigTypeList(Ljava/util/ArrayList;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mLevelRecyleView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditLevelListAdapter:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    if-nez v0, :cond_3

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditLevelListAdapter:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/camera/fragment/mimoji/c;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/mimoji/c;-><init>(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)V

    invoke-direct {v0, v1, v2}, Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/fragment/mimoji/EditLevelListAdapter$ItfGvOnItemClickListener;)V

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditLevelListAdapter:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mLevelRecyleView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditLevelListAdapter:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditLevelListAdapter:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;->setIsColorNeedNotify(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;

    if-nez v0, :cond_4

    .line 13
    new-instance v0, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;

    new-instance v2, Lcom/android/camera/fragment/mimoji/d;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/mimoji/d;-><init>(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;->setOnSelectListener(Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter$OnSelectListener;)V

    .line 15
    :cond_4
    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getConfigTypeList()Ljava/util/ArrayList;

    move-result-object v0

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigType;

    .line 18
    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->queryAvatar()Lcom/arcsoft/avatar/AvatarEngine;

    move-result-object v4

    iget v5, v3, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigType;->configType:I

    .line 19
    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getASAvatarConfigValue()Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;

    move-result-object v6

    iget v6, v6, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;->gender:I

    .line 20
    invoke-virtual {v4, v5, v6}, Lcom/arcsoft/avatar/AvatarEngine;->getConfig(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 21
    sget-object v5, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "putConfigList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigType;->configTypeDesc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigType;->configType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object v5

    iget v6, v3, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigType;->configType:I

    invoke-virtual {v5, v6, v4}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->putConfigList(ILjava/util/ArrayList;)V

    .line 23
    iget v4, v3, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigType;->configType:I

    invoke-static {v4}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->filterTypeTitle(I)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 24
    :cond_5
    new-instance v4, Lcom/android/camera/fragment/mimoji/MimojiTypeBean;

    invoke-direct {v4}, Lcom/android/camera/fragment/mimoji/MimojiTypeBean;-><init>()V

    .line 25
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v3, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigType;->configType:I

    invoke-static {v5, v6}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->replaceTabTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 26
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/features/mimoji2/widget/autoselectview/SelectItemBean;->setText(Ljava/lang/String;)V

    .line 27
    iget-object v5, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiTypeView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/camera/features/mimoji2/widget/autoselectview/SelectItemBean;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 28
    invoke-virtual {v4, v5}, Lcom/android/camera/features/mimoji2/widget/autoselectview/SelectItemBean;->setCurLength(F)V

    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/mimoji/MimojiTypeBean;

    invoke-virtual {v5}, Lcom/android/camera/features/mimoji2/widget/autoselectview/SelectItemBean;->getCurTotalLength()F

    move-result v5

    invoke-virtual {v4}, Lcom/android/camera/features/mimoji2/widget/autoselectview/SelectItemBean;->getCurLength()F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Lcom/android/camera/features/mimoji2/widget/autoselectview/SelectItemBean;->getCurLength()F

    move-result v5

    .line 31
    :goto_2
    invoke-virtual {v4, v5}, Lcom/android/camera/features/mimoji2/widget/autoselectview/SelectItemBean;->setCurTotalLength(F)V

    const/4 v5, 0x0

    .line 32
    invoke-virtual {v4, v5}, Lcom/android/camera/features/mimoji2/widget/autoselectview/SelectItemBean;->setAlpha(I)V

    .line 33
    invoke-virtual {v4, v3}, Lcom/android/camera/fragment/mimoji/MimojiTypeBean;->setASAvatarConfigType(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigType;)V

    .line 34
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 35
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 36
    sget-object p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->TAG:Ljava/lang/String;

    const-string v0, " initConfigList() size 0 error"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 37
    :cond_8
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;->setDataList(Ljava/util/ArrayList;)V

    .line 38
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiTypeSelectView:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initMimojiEdit(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f090162

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090150

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 4
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900ce

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    const v0, 0x7f0901a6

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mReCaptureTextView:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mReCaptureTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mReCaptureTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0901a4

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditTextView:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0901a9

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mSaveTextView:Landroid/widget/TextView;

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mSaveTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mSaveTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f09019f

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09002c

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mConfirmTextView:Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->updateTitleState(I)V

    const v1, 0x7f0900fa

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/MimojiEditGLTextureView;

    iput-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    .line 21
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/MimojiEditGLTextureView;->setHandler(Landroid/os/Handler;)V

    const v1, 0x7f090120

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    .line 23
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 24
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiTypeView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0b006d

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0901ad

    .line 26
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiTypeView:Landroid/widget/TextView;

    :cond_0
    const v1, 0x7f090104

    .line 27
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;

    iput-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiTypeSelectView:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;

    .line 28
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiTypeSelectView:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectHorizontalView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    const v1, 0x7f090041

    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mLevelRecyleView:Landroid/support/v7/widget/RecyclerView;

    .line 30
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mLevelRecyleView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mLevelRecyleView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-nez p1, :cond_1

    .line 32
    new-instance p1, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mContext:Landroid/content/Context;

    const-string v2, "color_level"

    invoke-direct {p1, v1, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 34
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mLevelRecyleView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 35
    :cond_1
    new-instance p1, Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$2;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$2;-><init>(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)V

    invoke-direct {p1, v1, v2}, Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/fragment/mimoji/EditLevelListAdapter$ItfGvOnItemClickListener;)V

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditLevelListAdapter:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    .line 36
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditLevelListAdapter:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mClickCheck:Lcom/android/camera/fragment/mimoji/ClickCheck;

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;->setmClickCheck(Lcom/android/camera/fragment/mimoji/ClickCheck;)V

    .line 37
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mLevelRecyleView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditLevelListAdapter:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 38
    new-instance p1, Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;

    invoke-direct {p1}, Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiPageChangeAnimManager:Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;

    .line 39
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiPageChangeAnimManager:Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;

    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v2, p0, v0}, Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;->initView(Landroid/content/Context;Lcom/android/camera/ui/MimojiEditGLTextureView;Landroid/widget/LinearLayout;I)V

    return-void
.end method

.method private resetData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatarEngineManager:Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    invoke-virtual {v0}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->resetData()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditLevelListAdapter:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;->setIsColorNeedNotify(Z)V

    .line 5
    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getSelectType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getSubConfigList(Landroid/content/Context;I)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditLevelListAdapter:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;->setLevelDatas(Ljava/util/List;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRenderThread:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;

    invoke-virtual {v0}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->getIsRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRenderThread:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->setResetStopRender(Z)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRenderThread:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->draw(Z)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditLevelListAdapter:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 11
    sget-object v0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetData   mEnterFromMimoji :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEnterFromMimoji:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatar:Lcom/arcsoft/avatar/AvatarEngine;

    iget-boolean v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEnterFromMimoji:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mCurrentConfigPath:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->TempOriginalConfigPath:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, p0}, Lcom/arcsoft/avatar/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    return-void
.end method

.method private setupAvatar()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->TAG:Ljava/lang/String;

    const-string v1, "setup avatar"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mSetupCompleted:Z

    .line 3
    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatarEngineManager:Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatarEngineManager:Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    invoke-virtual {v1}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->queryAvatar()Lcom/arcsoft/avatar/AvatarEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatar:Lcom/arcsoft/avatar/AvatarEngine;

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatar:Lcom/arcsoft/avatar/AvatarEngine;

    sget-object v2, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->PersonTemplatePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar/AvatarEngine;->loadColorValue(Ljava/lang/String;)I

    .line 6
    iget-boolean v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEnterFromMimoji:Z

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatar:Lcom/arcsoft/avatar/AvatarEngine;

    sget-object v2, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->PersonTemplatePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar/AvatarEngine;->setTemplatePath(Ljava/lang/String;)V

    .line 8
    :cond_0
    new-instance v1, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;

    invoke-direct {v1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatar:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-virtual {v2, v1}, Lcom/arcsoft/avatar/AvatarEngine;->getConfigValue(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;)V

    .line 10
    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatarEngineManager:Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->setASAvatarConfigValue(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;)V

    .line 11
    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatarEngineManager:Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->setASAvatarConfigValueDefault(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatar:Lcom/arcsoft/avatar/AvatarEngine;

    const v2, 0x3f59999a    # 0.85f

    invoke-virtual {v1, v0, v2}, Lcom/arcsoft/avatar/AvatarEngine;->setRenderScene(ZF)V

    .line 13
    new-instance v1, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;

    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mContext:Landroid/content/Context;

    const/16 v3, 0xc8

    const-string v4, "MimojiEdit"

    invoke-direct {v1, v4, v3, v3, v2}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;-><init>(Ljava/lang/String;IILandroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRenderThread:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;

    .line 14
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRenderThread:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 15
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRenderThread:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;

    invoke-virtual {v1}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->waitUntilReady()V

    .line 16
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRenderThread:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;

    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->setUpdateHandler(Landroid/os/Handler;)V

    .line 17
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditLevelListAdapter:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    if-eqz v1, :cond_1

    .line 18
    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRenderThread:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;->setRenderThread(Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;)V

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatarEngineManager:Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    invoke-virtual {v1}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->initUpdatePara()V

    .line 20
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatar:Lcom/arcsoft/avatar/AvatarEngine;

    sget-object v2, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->TempOriginalConfigPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar/AvatarEngine;->saveConfig(Ljava/lang/String;)I

    .line 21
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRenderThread:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;

    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mClickCheck:Lcom/android/camera/fragment/mimoji/ClickCheck;

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->setClickCheck(Lcom/android/camera/fragment/mimoji/ClickCheck;)V

    const/4 v1, 0x1

    .line 22
    iput-boolean v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mSetupCompleted:Z

    .line 23
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/MimojiEditGLTextureView;->setIsStopRenderForce(Z)V

    .line 24
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/MimojiEditGLTextureView;->setStopRender(Z)V

    .line 25
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xd9

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$MimojiAvatarEngine;

    if-eqz p0, :cond_2

    .line 26
    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$MimojiAvatarEngine;->onMimojiInitFinish()V

    :cond_2
    return-void
.end method

.method private showAlertDialog(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsShowDialog:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const v2, 0x7f0f018a

    goto :goto_0

    :cond_2
    const v2, 0x7f0f018b

    goto :goto_0

    :cond_3
    const v2, 0x7f0f018d

    :goto_0
    if-ne v2, v1, :cond_4

    return-void

    .line 2
    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0f0177

    .line 5
    new-instance v3, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$5;-><init>(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0f016e

    .line 6
    new-instance v2, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$6;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$6;-><init>(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)V

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsShowDialog:Z

    .line 8
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mCurrentAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public synthetic Ra()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditState:Z

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->fromTag:I

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->updateTitleState(I)V

    .line 4
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiPageChangeAnimManager:Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;->resetLayoutPosition(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->updateTitleState(I)V

    :goto_0
    return-void
.end method

.method public synthetic Sa()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x69

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->startMimojiEdit(ZI)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatar:Lcom/arcsoft/avatar/AvatarEngine;

    iget-boolean v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsStartEdit:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->TempEditConfigPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->TempOriginalConfigPath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatar:Lcom/arcsoft/avatar/AvatarEngine;

    const v1, 0x3f59999a    # 0.85f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/arcsoft/avatar/AvatarEngine;->setRenderScene(ZF)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiTypeAdapter:Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/features/mimoji2/widget/autoselectview/AutoSelectAdapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->initConfigList()V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/MimojiEditGLTextureView;->setIsStopRenderForce(Z)V

    .line 7
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/MimojiEditGLTextureView;->setStopRender(Z)V

    return-void
.end method

.method public synthetic Ta()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->setupAvatar()V

    return-void
.end method

.method public synthetic a(Lcom/android/camera/fragment/mimoji/MimojiTypeBean;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectListener position  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiPageChangeAnimManager:Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;

    invoke-virtual {p2}, Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;->updateLayoutPosition()V

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditLevelListAdapter:Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Lcom/android/camera/fragment/mimoji/EditLevelListAdapter;->setIsColorNeedNotify(Z)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/fragment/mimoji/MimojiTypeBean;->getASAvatarConfigType()Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigType;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 v0, 0xe0

    invoke-virtual {p2, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$MimojiEditor;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 7
    iget p1, p1, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigType;->configType:I

    invoke-interface {p2, p1}, Lcom/android/camera/protocol/ModeProtocol$MimojiEditor;->onTypeConfigSelect(I)V

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mLevelRecyleView:Landroid/support/v7/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public directlyEnterEditMode(Lcom/android/camera/fragment/mimoji/MimojiInfo;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mCurrentConfigPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p1, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mPackPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mPopSaveDeletePath:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lcom/android/camera/fragment/mimoji/MimojiInfo;->mConfigPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mCurrentConfigPath:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEnterFromMimoji:Z

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsStartEdit:Z

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object v0

    sget v1, Lcom/android/camera/module/impl/component/MimojiStatusManager;->MIMOJI_EIDT:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->setMode(I)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->forceSwitchFront()Z

    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0, p2}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->startMimojiEdit(ZI)V

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd9

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MimojiAvatarEngine;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$MimojiAvatarEngine;->setDisableSingleTapUp(Z)V

    .line 12
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 13
    fill-array-data v2, :array_0

    invoke-interface {v0, p1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->disableMenuItem(Z[I)V

    const/16 p1, 0x65

    if-ne p1, p2, :cond_2

    const/4 p1, 0x4

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->updateTitleState(I)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->updateTitleState(I)V

    .line 16
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    invoke-direct {p0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->initConfigList()V

    return-void

    :array_0
    .array-data 4
        0xc5
        0xc1
    .end array-data
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xfa2

    return p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0b002b

    return p0
.end method

.method public goBack(ZZ)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->releaseRender()V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd9

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MimojiAvatarEngine;

    if-eqz v0, :cond_1

    xor-int/lit8 v1, p1, 0x1

    .line 5
    invoke-interface {v0, p2, v1}, Lcom/android/camera/protocol/ModeProtocol$MimojiAvatarEngine;->backToPreview(ZZ)V

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MimojiAvatarEngine;->onMimojiCreate()V

    :cond_1
    if-eqz p2, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xe2

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MimojiAlert;

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MimojiAlert;->refreshMimojiList()I

    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiCount(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEnterFromMimoji:Z

    .line 11
    iput-boolean p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsStartEdit:Z

    .line 12
    iget-object p2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditViewLayout:Landroid/view/View;

    const/16 v0, 0x8

    if-eqz p2, :cond_3

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->updateTitleState(I)V

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRenderThread:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;

    invoke-virtual {p1}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->quit()V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mSetupThread:Ljava/lang/Thread;

    .line 19
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    sget-object p1, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Z

    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mContext:Landroid/content/Context;

    const v0, 0x7f0900f9

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditViewStub:Landroid/view/ViewStub;

    .line 3
    new-instance p1, Lcom/android/camera/fragment/mimoji/ClickCheck;

    invoke-direct {p1}, Lcom/android/camera/fragment/mimoji/ClickCheck;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mClickCheck:Lcom/android/camera/fragment/mimoji/ClickCheck;

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsSaveBtnClicked:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsStartEdit:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->showAlertDialog(I)V

    return v0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditViewLayout:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_3

    const/4 p1, 0x3

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->showAlertDialog(I)V

    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mSetupCompleted:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "preview_mid"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 3
    :sswitch_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsSaveBtnClicked:Z

    if-eqz p1, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->showAlertDialog(I)V

    goto/16 :goto_0

    .line 5
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->updateTitleState(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mOperateSelectLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->initConfigList()V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiPageChangeAnimManager:Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;

    invoke-virtual {p1, v2}, Lcom/android/camera/fragment/mimoji/MimojiPageChangeAnimManager;->updateOperateState(I)V

    .line 10
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object p1

    sget v1, Lcom/android/camera/module/impl/component/MimojiStatusManager;->MIMOJI_EIDT:I

    invoke-virtual {p1, v1}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->setMode(I)V

    .line 11
    iput-boolean v3, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsStartEdit:Z

    const-string p0, "key_preview_mid_edit"

    .line 12
    invoke-static {p0, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13
    :sswitch_2
    iget-boolean p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsSaveBtnClicked:Z

    if-eqz p1, :cond_2

    goto/16 :goto_0

    .line 14
    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->fromTag:I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    const/4 p1, 0x5

    .line 15
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->showAlertDialog(I)V

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x69

    if-ne p1, v0, :cond_4

    .line 16
    iget p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mCurrentTopPannelState:I

    if-ne p1, v3, :cond_4

    .line 17
    invoke-direct {p0, v3}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->showAlertDialog(I)V

    goto :goto_0

    .line 18
    :cond_4
    iget-boolean p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditState:Z

    if-eqz p1, :cond_8

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mClickCheck:Lcom/android/camera/fragment/mimoji/ClickCheck;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/camera/fragment/mimoji/ClickCheck;->checkClickable()Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 20
    :cond_5
    iput-boolean v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditState:Z

    .line 21
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->updateTitleState(I)V

    .line 22
    invoke-direct {p0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->resetData()V

    const-string p0, "edit_reset"

    const-string p1, "edit"

    .line 23
    invoke-static {p0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :sswitch_3
    iget-boolean p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsSaveBtnClicked:Z

    if-nez p1, :cond_8

    .line 25
    iput-boolean v3, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsSaveBtnClicked:Z

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/MimojiEditGLTextureView;->setSaveConfigThum(Z)V

    .line 27
    iget-boolean p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsStartEdit:Z

    if-eqz p1, :cond_7

    .line 28
    new-instance p1, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;

    invoke-direct {p1}, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;-><init>()V

    .line 29
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatar:Lcom/arcsoft/avatar/AvatarEngine;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar/AvatarEngine;->getConfigValue(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;)V

    .line 30
    invoke-static {p1}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getMimojiConfigValue(Lcom/arcsoft/avatar/AvatarConfig$ASAvatarConfigValue;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "attr_event_name"

    const-string v1, "click"

    .line 31
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-boolean p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEnterFromMimoji:Z

    const-string v0, "key_edit_save"

    const-string v1, "attr_mimoji_edit_count"

    if-eqz p0, :cond_6

    const-string p0, "second"

    .line 33
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiSavePara(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_6
    const-string p0, "first"

    .line 35
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiSavePara(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_7
    const-string p0, "preview_mid_save"

    .line 37
    invoke-static {p0, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09002c -> :sswitch_3
        0x7f09019f -> :sswitch_2
        0x7f0901a4 -> :sswitch_1
        0x7f0901a6 -> :sswitch_0
        0x7f0901a9 -> :sswitch_3
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDeviceRotationChange(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/MimojiEditGLTextureView;->onDeviceRotationChange(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mClickCheck:Lcom/android/camera/fragment/mimoji/ClickCheck;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/mimoji/ClickCheck;->setForceDisabled(Z)V

    .line 2
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsStartEdit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditState:Z

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->updateTitleState(I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mClickCheck:Lcom/android/camera/fragment/mimoji/ClickCheck;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/mimoji/ClickCheck;->setForceDisabled(Z)V

    .line 2
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901a4

    const v1, 0x7f0802e7

    const v2, 0x7f0802eb

    const v3, 0x7f060066

    const v4, 0x7f06006b

    const/4 v5, 0x1

    if-eq p1, v0, :cond_4

    const v0, 0x7f0901a6

    if-eq p1, v0, :cond_2

    const v0, 0x7f0901a9

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mSaveTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0802ea

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mSaveTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v5, :cond_6

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mSaveTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0802e9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mSaveTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mReCaptureTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mReCaptureTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v5, :cond_6

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mReCaptureTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mReCaptureTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_5

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v5, :cond_6

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mEditTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTypeConfigSelect(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatarEngineManager:Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->setIsColorSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatarEngineManager:Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->setSelectType(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRenderThread:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;

    invoke-virtual {p1}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->getIsRendering()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x6

    .line 5
    iput v0, p1, Landroid/os/Message;->what:I

    .line 6
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRenderThread:Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/mimoji/MimojiThumbnailRenderThread;->setStopRender(Z)V

    :goto_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 2
    sget-object p1, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "provideAnimateElement, animateInElements"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "resetType = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditViewLayout:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    if-ne p3, p1, :cond_1

    .line 4
    sget-object p1, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->TAG:Ljava/lang/String;

    const-string p2, "mimoji edit timeout"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1, p1}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->goBack(ZZ)V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->reset()V

    .line 7
    iget-object p2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mCurrentAlertDialog:Landroid/app/AlertDialog;

    if-eqz p2, :cond_0

    .line 8
    iput-boolean p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsShowDialog:Z

    .line 9
    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mCurrentAlertDialog:Landroid/app/AlertDialog;

    .line 11
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa0

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 12
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->getFragmentInto()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    :cond_1
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xe0

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public releaseRender()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MimojiEditGLTextureView;->setIsStopRenderForce(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    new-instance v1, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$3;-><init>(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLTextureView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/MimojiEditGLTextureView;->setStopRender(Z)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    :cond_0
    return-void
.end method

.method public resetClickEnable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mClickCheck:Lcom/android/camera/fragment/mimoji/ClickCheck;

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/mimoji/ClickCheck;->setForceDisabled(Z)V

    :cond_0
    return-void
.end method

.method public resetConfig()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->getInstance()Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatarEngineManager:Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatarEngineManager:Lcom/android/camera/fragment/mimoji/AvatarEngineManager;

    invoke-virtual {v0}, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->queryAvatar()Lcom/arcsoft/avatar/AvatarEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatar:Lcom/arcsoft/avatar/AvatarEngine;

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MimojiEditGLTextureView;->setStopRender(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/fragment/mimoji/e;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/mimoji/e;-><init>(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatar:Lcom/arcsoft/avatar/AvatarEngine;

    iget-boolean v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsStartEdit:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->TempEditConfigPath:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/camera/fragment/mimoji/AvatarEngineManager;->TempOriginalConfigPath:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar/AvatarEngine;->loadConfig(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mAvatar:Lcom/arcsoft/avatar/AvatarEngine;

    const v1, 0x3f59999a    # 0.85f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/arcsoft/avatar/AvatarEngine;->setRenderScene(ZF)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/MimojiEditGLTextureView;->setIsStopRenderForce(Z)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/MimojiEditGLTextureView;->setStopRender(Z)V

    :goto_1
    return-void
.end method

.method public startMimojiEdit(ZI)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMimojiEdit\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mSetupCompleted:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditViewLayout:Landroid/view/View;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditViewLayout:Landroid/view/View;

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditViewLayout:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->initMimojiEdit(Landroid/view/View;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mLevelRecyleView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->isFullScreenNavBarHidden(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07014a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 10
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 11
    :cond_1
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 12
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsSaveBtnClicked:Z

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 14
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->getFragmentInto()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 15
    iget-object v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditViewLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/MimojiEditGLTextureView;->setStopRender(Z)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditGLTextureView:Lcom/android/camera/ui/MimojiEditGLTextureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 18
    iput p2, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->fromTag:I

    .line 19
    iget-object v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mMimojiEditViewLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$1;

    invoke-direct {v1, p0, p2}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit$1;-><init>(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    if-eqz p1, :cond_3

    .line 20
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/camera/fragment/mimoji/b;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/mimoji/b;-><init>(Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mSetupThread:Ljava/lang/Thread;

    .line 21
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mSetupThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 22
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->setupAvatar()V

    :goto_1
    return-void
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xe0

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/module/impl/component/MimojiStatusManager;

    move-result-object p1

    sget v0, Lcom/android/camera/module/impl/component/MimojiStatusManager;->MIMOJI_NONE:I

    invoke-virtual {p1, v0}, Lcom/android/camera/module/impl/component/MimojiStatusManager;->setMode(I)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsStartEdit:Z

    return-void
.end method

.method public updateTitleState(I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mCurrentTopPannelState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f060066

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_5

    const v3, 0x7f0f01a9

    const v4, 0x7f060068

    const/4 v5, 0x2

    const v6, 0x7f0f01aa

    if-eq p1, v5, :cond_4

    const/4 v5, 0x3

    if-eq p1, v5, :cond_3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    goto/16 :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0

    .line 4
    :cond_2
    iput v3, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mCurrentTopPannelState:I

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iget-object p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0

    .line 14
    :cond_3
    iput v5, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mCurrentTopPannelState:I

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 25
    :cond_4
    iput v5, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mCurrentTopPannelState:I

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 34
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 35
    :cond_5
    iput v1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mCurrentTopPannelState:I

    .line 36
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f016d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 39
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mBackTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mConfirmTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mRlAllEditContent:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    iget-boolean p0, p0, Lcom/android/camera/fragment/mimoji/FragmentMimojiEdit;->mIsStartEdit:Z

    if-nez p0, :cond_6

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    :goto_0
    return-void
.end method

.class public final Lcom/bumptech/glide/request/target/l;
.super Lcom/bumptech/glide/request/target/m;
.source "PreloadTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/m<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static final HANDLER:Landroid/os/Handler;

.field private static final Lt:I = 0x1


# instance fields
.field private final za:Lcom/bumptech/glide/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/request/target/k;

    invoke-direct {v2}, Lcom/bumptech/glide/request/target/k;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/request/target/l;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/m;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/request/target/m;-><init>(II)V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/request/target/l;->za:Lcom/bumptech/glide/m;

    return-void
.end method

.method public static a(Lcom/bumptech/glide/m;II)Lcom/bumptech/glide/request/target/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/m;",
            "II)",
            "Lcom/bumptech/glide/request/target/l<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/target/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/request/target/l;-><init>(Lcom/bumptech/glide/m;II)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/request/a/f;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/a/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/request/a/f<",
            "-TZ;>;)V"
        }
    .end annotation

    .line 2
    sget-object p1, Lcom/bumptech/glide/request/target/l;->HANDLER:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/l;->za:Lcom/bumptech/glide/m;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/m;->d(Lcom/bumptech/glide/request/target/o;)V

    return-void
.end method

.class public final Lcom/android/volley/toolbox/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private final mContent:Ljava/io/InputStream;

.field private final mContentLength:I

.field private final mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/volley/toolbox/HttpResponse;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;ILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;I",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/android/volley/toolbox/HttpResponse;->mStatusCode:I

    .line 4
    iput-object p2, p0, Lcom/android/volley/toolbox/HttpResponse;->mHeaders:Ljava/util/List;

    .line 5
    iput p3, p0, Lcom/android/volley/toolbox/HttpResponse;->mContentLength:I

    .line 6
    iput-object p4, p0, Lcom/android/volley/toolbox/HttpResponse;->mContent:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/volley/toolbox/HttpResponse;->mContent:Ljava/io/InputStream;

    return-object p0
.end method

.method public final getContentLength()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/volley/toolbox/HttpResponse;->mContentLength:I

    return p0
.end method

.method public final getHeaders()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/volley/toolbox/HttpResponse;->mHeaders:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getStatusCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/volley/toolbox/HttpResponse;->mStatusCode:I

    return p0
.end method

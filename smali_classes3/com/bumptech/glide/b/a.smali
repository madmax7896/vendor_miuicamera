.class public interface abstract Lcom/bumptech/glide/b/a;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/b/a$a;,
        Lcom/bumptech/glide/b/a$b;
    }
.end annotation


# static fields
.field public static final Az:I = 0x1

.field public static final Bz:I = 0x2

.field public static final Cz:I = 0x3

.field public static final Dz:I

.field public static final STATUS_OK:I


# virtual methods
.method public abstract M()V
.end method

.method public abstract P()I
.end method

.method public abstract R()I
.end method

.method public abstract Z()I
.end method

.method public abstract a(Landroid/graphics/Bitmap$Config;)V
    .param p1    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;)V
    .param p1    # Lcom/bumptech/glide/b/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/bumptech/glide/b/c;Ljava/nio/ByteBuffer;I)V
    .param p1    # Lcom/bumptech/glide/b/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/bumptech/glide/b/c;[B)V
    .param p1    # Lcom/bumptech/glide/b/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract advance()V
.end method

.method public abstract ca()I
.end method

.method public abstract clear()V
.end method

.method public abstract getData()Ljava/nio/ByteBuffer;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getDelay(I)I
.end method

.method public abstract getFrameCount()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLoopCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getNextFrame()Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getStatus()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract ha()I
.end method

.method public abstract read(Ljava/io/InputStream;I)I
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract read([B)I
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

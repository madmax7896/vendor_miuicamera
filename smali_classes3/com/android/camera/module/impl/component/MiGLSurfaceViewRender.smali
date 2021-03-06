.class public Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;
.super Ljava/lang/Object;
.source "MiGLSurfaceViewRender.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiGLSurfaceViewRender"

.field private static final cameraFragmentShaderString:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;uniform samplerExternalOES tex_rgb;varying vec2 textureOut;void main() {gl_FragColor = texture2D(tex_rgb, textureOut);}"

.field private static final dispalyFragmentShaderString:Ljava/lang/String; = "precision mediump float;uniform sampler2D tex_rgb;varying vec2 textureOut;void main() {vec4 res = texture2D(tex_rgb, textureOut);float r = clamp(1.1643 * (res.r - 0.0625) + 1.5958  * (res.b - 0.5), 0.0, 1.0);float g = clamp(1.1643 * (res.r - 0.0625) - 0.39173 * (res.g - 0.5) - 0.81290 * (res.b - 0.5), 0.0, 1.0);float b = clamp(1.1643 * (res.r - 0.0625) + 2.017   * (res.g - 0.5), 0.0, 1.0);gl_FragColor = vec4(r, g, b, 1.0);}"

.field private static final previewShaderString:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_rgb, filter_rgb;\nuniform bool extraVideoFilter;\nvarying vec2 textureOut;\nvoid main() {\n    vec2 uv = vec2(textureOut.x, 1.0 - textureOut.y);\n    vec4 res = texture2D(tex_rgb, uv);\n    if (extraVideoFilter) {\n        float quadx, quady, x, y;\n        float bi = floor(res.b * 63.0);\n        float mixratio = res.b * 63.0 - floor(res.b * 63.0);\n\n        quady = floor(bi / 8.0);\n        quadx = bi - quady * 8.0;\n        x = quadx * 64.0 + clamp(res.r * 63.0, 1.0, 63.0);\n        y = quady * 64.0 + clamp(res.g * 63.0, 1.0, 63.0);\n        vec2 poss1 = vec2(x / 512.0, y / 512.0);\n\n        bi = bi + 1.0;\n        quady = floor(bi / 8.0);\n        quadx = bi - quady * 8.0;\n        x = quadx * 64.0 + clamp(res.r * 63.0, 1.0, 63.0);\n        y = quady * 64.0 + clamp(res.g * 63.0, 1.0, 63.0);\n        vec2 poss2 = vec2(x / 512.0, y / 512.0);\n\n        vec4 color1 = texture2D(filter_rgb, poss1);\n        vec4 color2 = texture2D(filter_rgb, poss2);\n        res = mix(color1, color2, mixratio);\n\n}\n    gl_FragColor = res;\n}"

.field private static textureVertices:[F = null

.field private static final vertexShaderString:Ljava/lang/String; = "attribute vec4 vertexIn;attribute vec2 textureIn;varying vec2 textureOut;uniform mat4 modelViewProjectionMatrix;void main() {gl_Position = modelViewProjectionMatrix*vertexIn ;textureOut = (vec4(textureIn, 0.0, 1.0)).xy;}"

.field private static vertexVertices:[F


# instance fields
.field public ATTRIB_TEXTURE:I

.field public ATTRIB_TEXTURE2:I

.field public ATTRIB_VERTEX:I

.field public ATTRIB_VERTEX2:I

.field private RGBColor:Ljava/nio/ByteBuffer;

.field private final TABLESIZE:I

.field private camera_texture_id:[I

.field private extraVideoFilter:I

.field private filter_rgb:I

.field private mFbo:I

.field private mFboBuffer:[I

.field private mFboTexture:[I

.field private mFragshaderRgb:I

.field private mFramebufferTexture:I

.field private mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mOpenGlRender:Lcom/xiaomi/mediaprocess/OpenGlRender;

.field private mProgramID:I

.field private mProgramID2:I

.field private mRgbTexture:[I

.field private mTargetSurface:Landroid/opengl/GLSurfaceView;

.field private final mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mcamera_fragshader_texture:I

.field private mcamera_texture:I

.field private mmodelMatrix:I

.field private mmodelMatrixPreviewFilter:I

.field private mpreviewFilterProgramID:I

.field private mtransformMatrix:[F

.field textureVertices_buffer:Ljava/nio/ByteBuffer;

.field vertexVertices_buffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices:[F

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/xiaomi/mediaprocess/OpenGlRender;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_VERTEX:I

    .line 3
    iput v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_TEXTURE:I

    .line 4
    iput v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_VERTEX2:I

    .line 5
    iput v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_TEXTURE2:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    .line 7
    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 8
    iput-object v1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mtransformMatrix:[F

    const/16 v1, 0x200

    .line 9
    iput v1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->TABLESIZE:I

    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 10
    iput-object v2, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mRgbTexture:[I

    new-array v1, v1, [I

    .line 11
    iput-object v1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->camera_texture_id:[I

    .line 12
    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->RGBColor:Ljava/nio/ByteBuffer;

    .line 13
    new-instance v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender$1;-><init>(Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 14
    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mOpenGlRender:Lcom/xiaomi/mediaprocess/OpenGlRender;

    return-void
.end method

.method private InitShaders()V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    .line 2
    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    sget-object v2, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 4
    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    sget-object v1, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    .line 6
    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 7
    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    sget-object v3, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices:[F

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 8
    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-string v1, "attribute vec4 vertexIn;attribute vec2 textureIn;varying vec2 textureOut;uniform mat4 modelViewProjectionMatrix;void main() {gl_Position = modelViewProjectionMatrix*vertexIn ;textureOut = (vec4(textureIn, 0.0, 1.0)).xy;}"

    const-string v3, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;uniform samplerExternalOES tex_rgb;varying vec2 textureOut;void main() {gl_FragColor = texture2D(tex_rgb, textureOut);}"

    .line 9
    invoke-direct {v0, v1, v3}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramID:I

    .line 10
    iget v3, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramID:I

    const-string v4, "vertexIn"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_VERTEX:I

    .line 11
    iget v3, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_VERTEX:I

    const-string v5, "MiGLSurfaceViewRender"

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    const-string v3, "glGetAttribLocation error "

    .line 12
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget v3, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramID:I

    const-string v6, "textureIn"

    invoke-static {v3, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_TEXTURE:I

    .line 14
    iget v3, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_TEXTURE:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    const-string v3, "glGetAttribLocation error "

    .line 15
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_1
    iget v3, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramID:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 17
    iget v3, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramID:I

    const-string v6, "tex_rgb"

    invoke-static {v3, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mcamera_fragshader_texture:I

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "glGetAttribLocation mcamera_fragshader_texture: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mcamera_fragshader_texture:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget v3, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramID:I

    const-string v6, "modelViewProjectionMatrix"

    invoke-static {v3, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mmodelMatrix:I

    const/4 v3, 0x1

    new-array v6, v3, [I

    .line 20
    iput-object v6, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->camera_texture_id:[I

    .line 21
    iget-object v6, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->camera_texture_id:[I

    invoke-static {v3, v6, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 22
    iget-object v6, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->camera_texture_id:[I

    aget v6, v6, v2

    iput v6, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mcamera_texture:I

    .line 23
    iget v6, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mcamera_texture:I

    const v7, 0x8d65

    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v6, 0x2800

    const/16 v8, 0x2601

    .line 24
    invoke-static {v7, v6, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v9, 0x2801

    .line 25
    invoke-static {v7, v9, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v10, 0x2802

    const v11, 0x812f

    .line 26
    invoke-static {v7, v10, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v12, 0x2803

    .line 27
    invoke-static {v7, v12, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 28
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 29
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "glGetAttribLocation mcamera_texture: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mcamera_texture:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "precision mediump float;uniform sampler2D tex_rgb;varying vec2 textureOut;void main() {vec4 res = texture2D(tex_rgb, textureOut);float r = clamp(1.1643 * (res.r - 0.0625) + 1.5958  * (res.b - 0.5), 0.0, 1.0);float g = clamp(1.1643 * (res.r - 0.0625) - 0.39173 * (res.g - 0.5) - 0.81290 * (res.b - 0.5), 0.0, 1.0);float b = clamp(1.1643 * (res.r - 0.0625) + 2.017   * (res.g - 0.5), 0.0, 1.0);gl_FragColor = vec4(r, g, b, 1.0);}"

    .line 30
    invoke-direct {v0, v1, v7}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramID2:I

    .line 31
    iget v7, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramID2:I

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_VERTEX2:I

    .line 32
    iget v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_VERTEX2:I

    if-gez v4, :cond_2

    const-string v4, "programID_2 glGet vertex Location error "

    .line 33
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_2
    iget v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramID2:I

    const-string v7, "textureIn"

    invoke-static {v4, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_TEXTURE2:I

    .line 35
    iget v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_TEXTURE2:I

    if-gez v4, :cond_3

    const-string v4, "programID_2 glGet texture bLocation error "

    .line 36
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_3
    iget v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramID2:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 38
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 39
    iget v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramID2:I

    const-string v7, "tex_rgb"

    invoke-static {v4, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFragshaderRgb:I

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "programID_2 param ATTRIB_VERTEX2: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_VERTEX2:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ATTRIB_TEXTURE2:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_TEXTURE2:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " textuer2d samp:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFragshaderRgb:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v3, [I

    .line 41
    iput-object v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFboBuffer:[I

    .line 42
    iget-object v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFboBuffer:[I

    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 43
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 44
    iget-object v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFboBuffer:[I

    aget v4, v4, v2

    iput v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFbo:I

    .line 45
    iget v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFbo:I

    const v7, 0x8d40

    invoke-static {v7, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 46
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    new-array v4, v3, [I

    .line 47
    iput-object v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFboTexture:[I

    .line 48
    iget-object v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFboTexture:[I

    invoke-static {v3, v4, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 49
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 50
    iget-object v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFboTexture:[I

    aget v4, v4, v2

    iput v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFramebufferTexture:I

    .line 51
    iget v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFramebufferTexture:I

    const/16 v13, 0xde1

    invoke-static {v13, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 52
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    const/16 v14, 0xde1

    const/4 v15, 0x0

    const/16 v16, 0x1908

    const/16 v17, 0xf00

    const/16 v18, 0x870

    const/16 v19, 0x0

    const/16 v20, 0x1908

    const/16 v21, 0x1401

    const/16 v22, 0x0

    .line 53
    invoke-static/range {v14 .. v22}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 54
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    const v4, 0x46180400    # 9729.0f

    .line 55
    invoke-static {v13, v6, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 56
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 57
    invoke-static {v13, v9, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 58
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    const v4, 0x47012f00    # 33071.0f

    .line 59
    invoke-static {v13, v10, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 60
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 61
    invoke-static {v13, v12, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 62
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    const v4, 0x8ce0

    .line 63
    iget v14, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFramebufferTexture:I

    invoke-static {v7, v4, v13, v14, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 64
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    const/4 v4, 0x0

    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v15, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f800000    # 1.0f

    .line 65
    invoke-static {v4, v14, v15, v12}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 66
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 67
    invoke-static {v13, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 68
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 69
    invoke-static {v7, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 70
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fbo id:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFbo:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mFramebufferTexture:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFramebufferTexture:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "precision mediump float;\nuniform sampler2D tex_rgb, filter_rgb;\nuniform bool extraVideoFilter;\nvarying vec2 textureOut;\nvoid main() {\n    vec2 uv = vec2(textureOut.x, 1.0 - textureOut.y);\n    vec4 res = texture2D(tex_rgb, uv);\n    if (extraVideoFilter) {\n        float quadx, quady, x, y;\n        float bi = floor(res.b * 63.0);\n        float mixratio = res.b * 63.0 - floor(res.b * 63.0);\n\n        quady = floor(bi / 8.0);\n        quadx = bi - quady * 8.0;\n        x = quadx * 64.0 + clamp(res.r * 63.0, 1.0, 63.0);\n        y = quady * 64.0 + clamp(res.g * 63.0, 1.0, 63.0);\n        vec2 poss1 = vec2(x / 512.0, y / 512.0);\n\n        bi = bi + 1.0;\n        quady = floor(bi / 8.0);\n        quadx = bi - quady * 8.0;\n        x = quadx * 64.0 + clamp(res.r * 63.0, 1.0, 63.0);\n        y = quady * 64.0 + clamp(res.g * 63.0, 1.0, 63.0);\n        vec2 poss2 = vec2(x / 512.0, y / 512.0);\n\n        vec4 color1 = texture2D(filter_rgb, poss1);\n        vec4 color2 = texture2D(filter_rgb, poss2);\n        res = mix(color1, color2, mixratio);\n\n}\n    gl_FragColor = res;\n}"

    .line 72
    invoke-direct {v0, v1, v4}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mpreviewFilterProgramID:I

    .line 73
    iget v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mpreviewFilterProgramID:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 74
    iget v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mpreviewFilterProgramID:I

    const-string v4, "modelViewProjectionMatrix"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mmodelMatrixPreviewFilter:I

    .line 75
    iget v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mmodelMatrixPreviewFilter:I

    if-gez v1, :cond_4

    const-string v1, "mpreviewFilterProgramID glGet modelViewProjectionMatrix Location error "

    .line 76
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_4
    iget v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mpreviewFilterProgramID:I

    const-string v4, "filter_rgb"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->filter_rgb:I

    .line 78
    iget v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mpreviewFilterProgramID:I

    const-string v4, "extraVideoFilter"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->extraVideoFilter:I

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "glGetAttribLocation filter rgb id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->filter_rgb:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " extraVideoFilter id:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->extraVideoFilter:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mRgbTexture:[I

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generate texture rgb id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mRgbTexture:[I

    aget v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x84c1

    .line 82
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 83
    iget-object v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mRgbTexture:[I

    aget v1, v1, v2

    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 84
    invoke-static {v13, v6, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 85
    invoke-static {v13, v9, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 86
    invoke-static {v13, v10, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 87
    invoke-static {v13, v1, v11}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 88
    iget v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->filter_rgb:I

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x200

    const/16 v8, 0x200

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    .line 89
    iget-object v12, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->RGBColor:Ljava/nio/ByteBuffer;

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 90
    iget v1, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->extraVideoFilter:I

    iget-object v0, v0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->RGBColor:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 91
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    return-void
.end method

.method private TransferExternalImagetoFbo()V
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0xf00

    const/16 v2, 0x870

    .line 1
    invoke-static {v0, v0, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 2
    iget v1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFbo:I

    const v2, 0x8d40

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 3
    iget v1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramID:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v1, 0x84c0

    .line 4
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 5
    iget v1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mcamera_texture:I

    const v3, 0x8d65

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 6
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 7
    iget v1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mcamera_fragshader_texture:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 8
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 9
    iget v1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mmodelMatrix:I

    iget-object v3, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mtransformMatrix:[F

    const/4 v4, 0x1

    invoke-static {v1, v4, v0, v3, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 10
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 11
    iget v1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_VERTEX:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 12
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 13
    iget v3, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_VERTEX:I

    iget-object v8, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 14
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 15
    iget v1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_TEXTURE:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 16
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 17
    iget v3, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_TEXTURE:I

    iget-object v8, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 18
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    const/4 v1, 0x5

    const/4 v3, 0x4

    .line 19
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 20
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 21
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 22
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 23
    iget v1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_VERTEX:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 24
    iget p0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_TEXTURE:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 25
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 26
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 27
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    return-void
.end method

.method private static abortUnless(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;)Landroid/opengl/GLSurfaceView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mTargetSurface:Landroid/opengl/GLSurfaceView;

    return-object p0
.end method

.method private static checkNoGLES2Error()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLES20 error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiGLSurfaceViewRender"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLES20 error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->abortUnless(ZLjava/lang/String;)V

    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const v0, 0x8b31

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->loadShader(ILjava/lang/String;)I

    move-result v0

    const v1, 0x8b30

    .line 2
    invoke-direct {p0, v1, p2}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->loadShader(ILjava/lang/String;)I

    move-result p0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vertex shader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -- "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiGLSurfaceViewRender"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fragment shader: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p1

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v3, p2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "Create OpenGL program failed."

    .line 6
    invoke-static {v3, v4}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->abortUnless(ZLjava/lang/String;)V

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "program: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 8
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 9
    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 10
    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array p0, p2, [I

    const v0, 0x8b82

    .line 11
    invoke-static {p1, v0, p0, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 12
    aget p0, p0, v1

    if-eq p0, p2, :cond_1

    .line 13
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move p1, v1

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " end if program: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shader: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiGLSurfaceViewRender"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 4
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v1, 0x8b81

    .line 5
    invoke-static {p0, v1, p2, p1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 6
    aget p2, p2, p1

    if-nez p2, :cond_0

    .line 7
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move p0, p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "end shader: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method


# virtual methods
.method public DrawCameraPreview(IIII)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->TransferExternalImagetoFbo()V

    .line 2
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 3
    iget p1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mpreviewFilterProgramID:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const p1, 0x84c0

    .line 4
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 5
    iget p1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFramebufferTexture:I

    const/16 p2, 0xde1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 6
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 7
    iget p1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mpreviewFilterProgramID:I

    const-string p2, "tex_rgb"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    .line 8
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 9
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mtransformMatrix:[F

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 11
    iget p1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mmodelMatrixPreviewFilter:I

    iget-object p3, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mtransformMatrix:[F

    const/4 p4, 0x1

    invoke-static {p1, p4, p2, p3, p2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 12
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 13
    iget p1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mpreviewFilterProgramID:I

    const-string p3, "vertexIn"

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    .line 14
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 15
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 16
    iget-object v5, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 17
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 18
    iget p3, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mpreviewFilterProgramID:I

    const-string p4, "textureIn"

    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p3

    .line 19
    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 20
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 21
    iget-object v5, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    move v0, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 22
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    const/4 p0, 0x5

    const/4 p4, 0x4

    .line 23
    invoke-static {p0, p2, p4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 24
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 25
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 26
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    .line 27
    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 28
    invoke-static {p3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 29
    invoke-static {}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->checkNoGLES2Error()V

    return-void
.end method

.method public bind(Landroid/graphics/Rect;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->TransferExternalImagetoFbo()V

    return-void
.end method

.method public init(Landroid/graphics/SurfaceTexture;)V
    .locals 9

    const-string v0, "MiGLSurfaceViewRender"

    const-string v1, "init :"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->InitShaders()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v7, v0, [B

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->vertexVertices_buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v8, v0, [B

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->textureVertices_buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mOpenGlRender:Lcom/xiaomi/mediaprocess/OpenGlRender;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramID2:I

    iget v3, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFramebufferTexture:I

    iget v4, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFragshaderRgb:I

    iget v5, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_VERTEX2:I

    iget v6, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->ATTRIB_TEXTURE2:I

    invoke-virtual/range {v1 .. v8}, Lcom/xiaomi/mediaprocess/OpenGlRender;->SetOpengGlRenderParams(IIIII[B[B)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mOpenGlRender:Lcom/xiaomi/mediaprocess/OpenGlRender;

    iget v1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFramebufferTexture:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/mediaprocess/OpenGlRender;->SetCurrentGLContext(I)V

    .line 11
    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget p0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mcamera_texture:I

    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->camera_texture_id:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mRgbTexture:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mRgbTexture:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFboTexture:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mFboBuffer:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 6
    iget v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramID:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 7
    iget v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mProgramID2:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 8
    iget p0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mpreviewFilterProgramID:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void
.end method

.method public setFilterRGBColor(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->RGBColor:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public updateTexImage()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mtransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mtransformMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 4
    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiGLSurfaceViewRender;->mtransformMatrix:[F

    const/4 v3, 0x0

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

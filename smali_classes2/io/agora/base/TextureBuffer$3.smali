.class Lio/agora/base/TextureBuffer$3;
.super Ljava/lang/Object;
.source "TextureBuffer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/TextureBuffer;->applyTransformMatrix(Landroid/graphics/Matrix;II)Lio/agora/base/TextureBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/TextureBuffer;


# direct methods
.method constructor <init>(Lio/agora/base/TextureBuffer;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lio/agora/base/TextureBuffer$3;->this$0:Lio/agora/base/TextureBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 348
    iget-object v0, p0, Lio/agora/base/TextureBuffer$3;->this$0:Lio/agora/base/TextureBuffer;

    invoke-virtual {v0}, Lio/agora/base/TextureBuffer;->release()V

    return-void
.end method

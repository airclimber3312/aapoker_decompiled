.class public final Lcom/tencent/bugly/proguard/bd$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public D:B

.field public cO:Ljava/lang/String;

.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/bugly/proguard/bd$a;->D:B

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bd$a;->cO:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/bd$a;->data:[B

    return-void
.end method

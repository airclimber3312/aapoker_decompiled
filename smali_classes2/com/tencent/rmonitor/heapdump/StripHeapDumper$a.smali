.class public final Lcom/tencent/rmonitor/heapdump/StripHeapDumper$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rmonitor/heapdump/StripHeapDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public AL:Z

.field public AM:Ljava/io/IOException;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/rmonitor/heapdump/StripHeapDumper$a;->AL:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/rmonitor/heapdump/StripHeapDumper$a;->AM:Ljava/io/IOException;

    return-void
.end method

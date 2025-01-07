.class final Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager$1;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ".*/librmonitor_memory.so$"

    invoke-virtual {p0, v0}, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager$1;->add(Ljava/lang/Object;)Z

    const-string v0, ".*/libBugly_Native.so$"

    invoke-virtual {p0, v0}, Lcom/tencent/rmonitor/fd/hook/FdOpenStackManager$1;->add(Ljava/lang/Object;)Z

    return-void
.end method

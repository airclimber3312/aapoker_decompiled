.class Lcom/snail/antifake/jni/EmulatorCheckService$1$1;
.super Ljava/lang/Object;
.source "EmulatorCheckService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snail/antifake/jni/EmulatorCheckService$1;->kill()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/snail/antifake/jni/EmulatorCheckService$1;


# direct methods
.method constructor <init>(Lcom/snail/antifake/jni/EmulatorCheckService$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/snail/antifake/jni/EmulatorCheckService$1$1;->this$1:Lcom/snail/antifake/jni/EmulatorCheckService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

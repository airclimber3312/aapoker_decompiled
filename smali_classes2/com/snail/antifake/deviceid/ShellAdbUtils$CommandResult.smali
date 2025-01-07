.class public Lcom/snail/antifake/deviceid/ShellAdbUtils$CommandResult;
.super Ljava/lang/Object;
.source "ShellAdbUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snail/antifake/deviceid/ShellAdbUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandResult"
.end annotation


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public result:I

.field public successMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput p1, p0, Lcom/snail/antifake/deviceid/ShellAdbUtils$CommandResult;->result:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "successMsg",
            "errorMsg"
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput p1, p0, Lcom/snail/antifake/deviceid/ShellAdbUtils$CommandResult;->result:I

    .line 218
    iput-object p2, p0, Lcom/snail/antifake/deviceid/ShellAdbUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 219
    iput-object p3, p0, Lcom/snail/antifake/deviceid/ShellAdbUtils$CommandResult;->errorMsg:Ljava/lang/String;

    return-void
.end method

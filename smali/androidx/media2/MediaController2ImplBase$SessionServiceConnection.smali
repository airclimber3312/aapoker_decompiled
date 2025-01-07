.class Landroidx/media2/MediaController2ImplBase$SessionServiceConnection;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/MediaController2ImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/MediaController2ImplBase;


# direct methods
.method constructor <init>(Landroidx/media2/MediaController2ImplBase;)V
    .locals 0

    .line 1139
    iput-object p1, p0, Landroidx/media2/MediaController2ImplBase$SessionServiceConnection;->this$0:Landroidx/media2/MediaController2ImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    .line 1171
    iget-object p1, p0, Landroidx/media2/MediaController2ImplBase$SessionServiceConnection;->this$0:Landroidx/media2/MediaController2ImplBase;

    invoke-virtual {p1}, Landroidx/media2/MediaController2ImplBase;->close()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1145
    sget-boolean v0, Landroidx/media2/MediaController2ImplBase;->DEBUG:Z

    const-string v1, "MC2ImplBase"

    if-eqz v0, :cond_0

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onServiceConnected "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaController2ImplBase$SessionServiceConnection;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object v0, v0, Landroidx/media2/MediaController2ImplBase;->mToken:Landroidx/media2/SessionToken2;

    invoke-virtual {v0}, Landroidx/media2/SessionToken2;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was connected, but expected pkg="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/media2/MediaController2ImplBase$SessionServiceConnection;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object p1, p1, Landroidx/media2/MediaController2ImplBase;->mToken:Landroidx/media2/SessionToken2;

    .line 1151
    invoke-virtual {p1}, Landroidx/media2/SessionToken2;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with id="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/media2/MediaController2ImplBase$SessionServiceConnection;->this$0:Landroidx/media2/MediaController2ImplBase;

    iget-object p1, p1, Landroidx/media2/MediaController2ImplBase;->mToken:Landroidx/media2/SessionToken2;

    invoke-virtual {p1}, Landroidx/media2/SessionToken2;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1150
    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1154
    :cond_1
    iget-object p1, p0, Landroidx/media2/MediaController2ImplBase$SessionServiceConnection;->this$0:Landroidx/media2/MediaController2ImplBase;

    invoke-static {p2}, Landroidx/media2/IMediaSession2$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/IMediaSession2;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media2/MediaController2ImplBase;->connectToSession(Landroidx/media2/IMediaSession2;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1161
    sget-boolean v0, Landroidx/media2/MediaController2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session service "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is disconnected."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MC2ImplBase"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.class public final Landroidx/media2/SessionCommandGroup2;
.super Ljava/lang/Object;
.source "SessionCommandGroup2.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/SessionCommandGroup2$Builder;
    }
.end annotation


# static fields
.field private static final KEY_COMMANDS:Ljava/lang/String; = "android.media.session2.commandgroup.commands"

.field private static final TAG:Ljava/lang/String; = "SessionCommandGroup2"


# instance fields
.field mCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/SessionCommand2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/SessionCommandGroup2;->mCommands:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media2/SessionCommand2;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/SessionCommandGroup2;->mCommands:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 63
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media2/SessionCommandGroup2;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.media.session2.commandgroup.commands"

    .line 160
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 164
    :cond_1
    new-instance v0, Landroidx/media2/SessionCommandGroup2;

    invoke-direct {v0}, Landroidx/media2/SessionCommandGroup2;-><init>()V

    const/4 v1, 0x0

    .line 165
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 166
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 167
    instance-of v3, v2, Landroid/os/Bundle;

    if-nez v3, :cond_2

    goto :goto_1

    .line 170
    :cond_2
    check-cast v2, Landroid/os/Bundle;

    .line 171
    invoke-static {v2}, Landroidx/media2/SessionCommand2;->fromBundle(Landroid/os/Bundle;)Landroidx/media2/SessionCommand2;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 173
    invoke-virtual {v0, v2}, Landroidx/media2/SessionCommandGroup2;->addCommand(Landroidx/media2/SessionCommand2;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public addCommand(I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p0, p1}, Landroidx/media2/SessionCommandGroup2;->hasCommand(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Landroidx/media2/SessionCommandGroup2;->mCommands:Ljava/util/List;

    new-instance v1, Landroidx/media2/SessionCommand2;

    invoke-direct {v1, p1}, Landroidx/media2/SessionCommand2;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use addCommand(SessionCommand2) for COMMAND_CODE_CUSTOM."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addCommand(Landroidx/media2/SessionCommand2;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p0, p1}, Landroidx/media2/SessionCommandGroup2;->hasCommand(Landroidx/media2/SessionCommand2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Landroidx/media2/SessionCommandGroup2;->mCommands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "command shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCommands()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/media2/SessionCommand2;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroidx/media2/SessionCommandGroup2;->mCommands:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasCommand(I)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 121
    iget-object v0, p0, Landroidx/media2/SessionCommandGroup2;->mCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/SessionCommand2;

    .line 122
    invoke-virtual {v1}, Landroidx/media2/SessionCommand2;->getCommandCode()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 119
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use hasCommand(Command) for custom command"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasCommand(Landroidx/media2/SessionCommand2;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Landroidx/media2/SessionCommandGroup2;->mCommands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "command shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iget-object v1, p0, Landroidx/media2/SessionCommandGroup2;->mCommands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/SessionCommand2;

    .line 144
    invoke-virtual {v2}, Landroidx/media2/SessionCommand2;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.media.session2.commandgroup.commands"

    .line 147
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v1
.end method

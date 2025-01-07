.class public final Landroidx/media2/SessionCommandGroup2$Builder;
.super Ljava/lang/Object;
.source "SessionCommandGroup2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/SessionCommandGroup2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCommands:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media2/SessionCommand2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media2/SessionCommandGroup2$Builder;->mCommands:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroidx/media2/SessionCommandGroup2;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroidx/media2/SessionCommandGroup2;->getCommands()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/SessionCommandGroup2$Builder;->mCommands:Ljava/util/Set;

    return-void
.end method

.method private addCommandsWithPrefix(Ljava/lang/String;)V
    .locals 6

    .line 326
    const-class v0, Landroidx/media2/SessionCommand2;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 328
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 329
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    .line 330
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "COMMAND_CODE_CUSTOM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    :try_start_0
    iget-object v2, p0, Landroidx/media2/SessionCommandGroup2$Builder;->mCommands:Ljava/util/Set;

    new-instance v3, Landroidx/media2/SessionCommand2;

    aget-object v4, v0, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {v3, v4}, Landroidx/media2/SessionCommand2;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 334
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in MediaSession2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SessionCommandGroup2"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method addAllLibraryCommands()Landroidx/media2/SessionCommandGroup2$Builder;
    .locals 1

    const/16 v0, 0x1d

    .line 315
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x1e

    .line 316
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x1f

    .line 317
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x20

    .line 318
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x21

    .line 319
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x22

    .line 320
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x23

    .line 321
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    return-object p0
.end method

.method addAllPlaybackCommands()Landroidx/media2/SessionCommandGroup2$Builder;
    .locals 1

    const/4 v0, 0x2

    .line 266
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/4 v0, 0x1

    .line 267
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/4 v0, 0x6

    .line 268
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/4 v0, 0x3

    .line 269
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x9

    .line 270
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x27

    .line 271
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    return-object p0
.end method

.method addAllPlaylistCommands()Landroidx/media2/SessionCommandGroup2$Builder;
    .locals 2

    const/16 v0, 0xf

    .line 276
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x14

    .line 277
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v1, 0x12

    .line 278
    invoke-virtual {p0, v1}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    .line 279
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x10

    .line 280
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x11

    .line 281
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x13

    .line 282
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x15

    .line 283
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0xe

    .line 284
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0xd

    .line 285
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/4 v0, 0x4

    .line 286
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0xc

    .line 287
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/4 v0, 0x5

    .line 288
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    return-object p0
.end method

.method public addAllPredefinedCommands()Landroidx/media2/SessionCommandGroup2$Builder;
    .locals 0

    .line 230
    invoke-virtual {p0}, Landroidx/media2/SessionCommandGroup2$Builder;->addAllPlaybackCommands()Landroidx/media2/SessionCommandGroup2$Builder;

    .line 231
    invoke-virtual {p0}, Landroidx/media2/SessionCommandGroup2$Builder;->addAllPlaylistCommands()Landroidx/media2/SessionCommandGroup2$Builder;

    .line 232
    invoke-virtual {p0}, Landroidx/media2/SessionCommandGroup2$Builder;->addAllVolumeCommands()Landroidx/media2/SessionCommandGroup2$Builder;

    .line 233
    invoke-virtual {p0}, Landroidx/media2/SessionCommandGroup2$Builder;->addAllSessionCommands()Landroidx/media2/SessionCommandGroup2$Builder;

    .line 234
    invoke-virtual {p0}, Landroidx/media2/SessionCommandGroup2$Builder;->addAllLibraryCommands()Landroidx/media2/SessionCommandGroup2$Builder;

    return-object p0
.end method

.method addAllSessionCommands()Landroidx/media2/SessionCommandGroup2$Builder;
    .locals 1

    const/4 v0, 0x7

    .line 299
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x16

    .line 300
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x18

    .line 301
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x17

    .line 302
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x19

    .line 303
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x1b

    .line 304
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x1a

    .line 305
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x8

    .line 306
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x26

    .line 307
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x1c

    .line 308
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x24

    .line 309
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0x25

    .line 310
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    return-object p0
.end method

.method addAllVolumeCommands()Landroidx/media2/SessionCommandGroup2$Builder;
    .locals 1

    const/16 v0, 0xb

    .line 293
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    const/16 v0, 0xa

    .line 294
    invoke-virtual {p0, v0}, Landroidx/media2/SessionCommandGroup2$Builder;->addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;

    return-object p0
.end method

.method public addCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Landroidx/media2/SessionCommandGroup2$Builder;->mCommands:Ljava/util/Set;

    new-instance v1, Landroidx/media2/SessionCommand2;

    invoke-direct {v1, p1}, Landroidx/media2/SessionCommand2;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 219
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use addCommand(SessionCommand2) for COMMAND_CODE_CUSTOM."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addCommand(Landroidx/media2/SessionCommand2;)Landroidx/media2/SessionCommandGroup2$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Landroidx/media2/SessionCommandGroup2$Builder;->mCommands:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 205
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "command shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Landroidx/media2/SessionCommandGroup2;
    .locals 2

    .line 347
    new-instance v0, Landroidx/media2/SessionCommandGroup2;

    iget-object v1, p0, Landroidx/media2/SessionCommandGroup2$Builder;->mCommands:Ljava/util/Set;

    invoke-direct {v0, v1}, Landroidx/media2/SessionCommandGroup2;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public removeCommand(I)Landroidx/media2/SessionCommandGroup2$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 261
    iget-object v0, p0, Landroidx/media2/SessionCommandGroup2$Builder;->mCommands:Ljava/util/Set;

    new-instance v1, Landroidx/media2/SessionCommand2;

    invoke-direct {v1, p1}, Landroidx/media2/SessionCommand2;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p0

    .line 259
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "commandCode shouldn\'t be COMMAND_CODE_CUSTOM"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeCommand(Landroidx/media2/SessionCommand2;)Landroidx/media2/SessionCommandGroup2$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Landroidx/media2/SessionCommandGroup2$Builder;->mCommands:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p0

    .line 245
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "command shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

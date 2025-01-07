.class final Landroidx/media2/SessionToken2ImplBase;
.super Ljava/lang/Object;
.source "SessionToken2ImplBase.java"

# interfaces
.implements Landroidx/media2/SessionToken2$SessionToken2Impl;


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mISession2:Landroidx/media2/IMediaSession2;

.field private final mPackageName:Ljava/lang/String;

.field private final mServiceName:Ljava/lang/String;

.field private final mSessionId:Ljava/lang/String;

.field private final mType:I

.field private final mUid:I


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/IMediaSession2;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Landroidx/media2/SessionToken2ImplBase;->mUid:I

    .line 78
    iput p2, p0, Landroidx/media2/SessionToken2ImplBase;->mType:I

    .line 79
    iput-object p3, p0, Landroidx/media2/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Landroidx/media2/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Landroidx/media2/SessionToken2ImplBase;->mComponentName:Landroid/content/ComponentName;

    .line 83
    iput-object p5, p0, Landroidx/media2/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    .line 84
    iput-object p6, p0, Landroidx/media2/SessionToken2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

    return-void
.end method

.method constructor <init>(Landroid/content/ComponentName;ILjava/lang/String;I)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 62
    iput-object p1, p0, Landroidx/media2/SessionToken2ImplBase;->mComponentName:Landroid/content/ComponentName;

    .line 63
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    .line 65
    iput p2, p0, Landroidx/media2/SessionToken2ImplBase;->mUid:I

    .line 66
    iput-object p3, p0, Landroidx/media2/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    .line 67
    iput p4, p0, Landroidx/media2/SessionToken2ImplBase;->mType:I

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Landroidx/media2/SessionToken2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serviceComponent shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media2/SessionToken2ImplBase;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.media.token.uid"

    .line 192
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "android.media.token.type"

    const/4 v1, -0x1

    .line 193
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "android.media.token.package_name"

    .line 194
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "android.media.token.service_name"

    .line 195
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "android.media.token.session_id"

    .line 196
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "android.media.token.session_binder"

    .line 197
    invoke-static {p0, v0}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroidx/media2/IMediaSession2$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/media2/IMediaSession2;

    move-result-object v7

    if-eqz v3, :cond_4

    const/4 p0, 0x1

    if-eq v3, p0, :cond_2

    const/4 p0, 0x2

    if-eq v3, p0, :cond_2

    const/16 p0, 0x65

    if-ne v3, p0, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 211
    :cond_2
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    .line 212
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session service needs service name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-eqz v7, :cond_6

    .line 218
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    if-eqz v6, :cond_5

    .line 221
    new-instance p0, Landroidx/media2/SessionToken2ImplBase;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroidx/media2/SessionToken2ImplBase;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/IMediaSession2;)V

    return-object p0

    .line 219
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Package name nor ID cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 204
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected token for session, binder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private sessionBinderEquals(Landroidx/media2/IMediaSession2;Landroidx/media2/IMediaSession2;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-interface {p1}, Landroidx/media2/IMediaSession2;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p2}, Landroidx/media2/IMediaSession2;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 99
    instance-of v0, p1, Landroidx/media2/SessionToken2ImplBase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    check-cast p1, Landroidx/media2/SessionToken2ImplBase;

    .line 103
    iget v0, p0, Landroidx/media2/SessionToken2ImplBase;->mUid:I

    iget v2, p1, Landroidx/media2/SessionToken2ImplBase;->mUid:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/media2/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media2/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    .line 104
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media2/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    .line 105
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media2/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    .line 106
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media2/SessionToken2ImplBase;->mType:I

    iget v2, p1, Landroidx/media2/SessionToken2ImplBase;->mType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/media2/SessionToken2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

    iget-object p1, p1, Landroidx/media2/SessionToken2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

    .line 108
    invoke-direct {p0, v0, p1}, Landroidx/media2/SessionToken2ImplBase;->sessionBinderEquals(Landroidx/media2/IMediaSession2;Landroidx/media2/IMediaSession2;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getBinder()Ljava/lang/Object;
    .locals 1

    .line 180
    iget-object v0, p0, Landroidx/media2/SessionToken2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/media2/IMediaSession2;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 151
    iget-object v0, p0, Landroidx/media2/SessionToken2ImplBase;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Landroidx/media2/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Landroidx/media2/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Landroidx/media2/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 161
    iget v0, p0, Landroidx/media2/SessionToken2ImplBase;->mType:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 131
    iget v0, p0, Landroidx/media2/SessionToken2ImplBase;->mUid:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 90
    iget v0, p0, Landroidx/media2/SessionToken2ImplBase;->mType:I

    iget v1, p0, Landroidx/media2/SessionToken2ImplBase;->mUid:I

    iget-object v2, p0, Landroidx/media2/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    .line 92
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget-object v3, p0, Landroidx/media2/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    .line 93
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iget-object v4, p0, Landroidx/media2/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 94
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public isLegacySession()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.media.token.uid"

    .line 167
    iget v2, p0, Landroidx/media2/SessionToken2ImplBase;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "android.media.token.package_name"

    .line 168
    iget-object v2, p0, Landroidx/media2/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.media.token.service_name"

    .line 169
    iget-object v2, p0, Landroidx/media2/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.media.token.session_id"

    .line 170
    iget-object v2, p0, Landroidx/media2/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.media.token.type"

    .line 171
    iget v2, p0, Landroidx/media2/SessionToken2ImplBase;->mType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    iget-object v1, p0, Landroidx/media2/SessionToken2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

    if-eqz v1, :cond_0

    const-string v2, "android.media.token.session_binder"

    .line 173
    invoke-interface {v1}, Landroidx/media2/IMediaSession2;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroidx/core/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionToken {pkg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media2/SessionToken2ImplBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/SessionToken2ImplBase;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/SessionToken2ImplBase;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/SessionToken2ImplBase;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IMediaSession2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/SessionToken2ImplBase;->mISession2:Landroidx/media2/IMediaSession2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

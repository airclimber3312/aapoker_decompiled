.class public final enum Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyphenate/chat/EMUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMUserInfoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

.field public static final enum AVATAR_URL:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

.field public static final enum BIRTH:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

.field public static final enum EMAIL:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

.field public static final enum EXT:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

.field public static final enum GENDER:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

.field public static final enum NICKNAME:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

.field public static final enum PHONE:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

.field public static final enum SIGN:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;


# instance fields
.field private desc:Ljava/lang/String;

.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    const/4 v1, 0x0

    sget-object v2, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->NICKNAME:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->AVATAR_URL:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->EMAIL:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->PHONE:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->GENDER:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->SIGN:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->BIRTH:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->EXT:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    const/4 v1, 0x0

    const-string v2, "nickname"

    const-string v3, "NICKNAME"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->NICKNAME:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    new-instance v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    const/4 v1, 0x1

    const-string v2, "avatarurl"

    const-string v3, "AVATAR_URL"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->AVATAR_URL:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    new-instance v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    const/4 v1, 0x2

    const-string v2, "mail"

    const-string v3, "EMAIL"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->EMAIL:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    new-instance v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    const/4 v1, 0x3

    const-string v2, "phone"

    const-string v3, "PHONE"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->PHONE:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    new-instance v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    const/4 v1, 0x4

    const-string v2, "gender"

    const-string v3, "GENDER"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->GENDER:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    new-instance v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    const/4 v1, 0x5

    const-string v2, "sign"

    const-string v3, "SIGN"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->SIGN:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    new-instance v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    const/4 v1, 0x6

    const-string v2, "birth"

    const-string v3, "BIRTH"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->BIRTH:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    new-instance v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    const/16 v1, 0x64

    const-string v2, "ext"

    const-string v3, "EXT"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->EXT:Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    invoke-static {}, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->$values()[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    move-result-object v0

    sput-object v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->$VALUES:[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->value:I

    iput-object p4, p0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;
    .locals 1

    const-class v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    return-object p0
.end method

.method public static values()[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;
    .locals 1

    sget-object v0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->$VALUES:[Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    invoke-virtual {v0}, [Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->value:I

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->desc:Ljava/lang/String;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/hyphenate/chat/EMUserInfo$EMUserInfoType;->value:I

    return-void
.end method

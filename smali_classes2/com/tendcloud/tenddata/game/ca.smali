.class final Lcom/tendcloud/tenddata/game/ca;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static a:Ljavax/crypto/spec/IvParameterSpec; = null

.field private static b:[B = null

.field private static c:Ljavax/crypto/SecretKey; = null

.field private static final d:I = 0x80

.field private static final e:I = 0x2710

.field private static final f:Ljava/lang/String; = "mPBE"

.field private static final g:Ljava/lang/String; = "iv"

.field private static final h:Ljava/lang/String; = "salt"

.field private static final i:I = 0x10

.field private static final j:I = 0x20

.field private static final k:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final l:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field private static final m:Ljava/lang/String;

.field private static final n:Ljava/lang/String; = "AES"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tendcloud/tenddata/game/cb;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/ca;->m:Ljava/lang/String;

    .line 79
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/tendcloud/tenddata/game/ca;->b()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ca;->a([C[B)Ljavax/crypto/SecretKey;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/ca;->c:Ljavax/crypto/SecretKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([C[B)Ljavax/crypto/SecretKey;
    .locals 4

    const-string v0, "PBKDF2WithHmacSHA1"

    .line 145
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 146
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v2, 0x2710

    const/16 v3, 0x80

    invoke-direct {v1, p0, p1, v2, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 147
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method private static a()Ljavax/crypto/spec/IvParameterSpec;
    .locals 3

    const-string v0, "iv"

    .line 94
    sget-object v1, Lcom/tendcloud/tenddata/game/ca;->a:Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_0

    return-object v1

    .line 98
    :cond_0
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/az$b;->AES_IV_LOCK:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/az;->getFileLock(Ljava/lang/String;)V

    const/16 v1, 0x10

    .line 99
    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ca;->a(Ljava/lang/String;I)[B

    move-result-object v2

    if-nez v2, :cond_1

    .line 101
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ca;->a(I)[B

    move-result-object v2

    .line 102
    invoke-static {v0, v2}, Lcom/tendcloud/tenddata/game/ca;->a(Ljava/lang/String;[B)V

    .line 104
    :cond_1
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/tendcloud/tenddata/game/ca;->a:Ljavax/crypto/spec/IvParameterSpec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :catchall_0
    sget-object v0, Lcom/tendcloud/tenddata/game/az$b;->AES_IV_LOCK:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/tendcloud/tenddata/game/ca;->a:Ljavax/crypto/spec/IvParameterSpec;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPBE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 222
    :cond_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 224
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :catchall_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method private static a(Ljava/lang/String;[B)V
    .locals 4

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    .line 201
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tendcloud/tenddata/game/ca;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(I)[B
    .locals 1

    .line 138
    new-array p0, p0, [B

    .line 139
    invoke-static {}, Lcom/tendcloud/tenddata/game/bp;->b()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method

.method private static a(ILjava/lang/String;)[B
    .locals 2

    .line 294
    :try_start_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bp;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    new-array p0, p0, [B

    const-string v0, ","

    .line 296
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 297
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 298
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    aput-byte v1, p0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    :catchall_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;I)[B
    .locals 7

    const-string v0, ""

    const-string v1, "mPBE"

    const/4 v2, 0x0

    .line 237
    :try_start_0
    sget-object v3, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 238
    invoke-interface {v3, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 245
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 247
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 248
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 249
    invoke-static {p0, v4}, Lcom/tendcloud/tenddata/game/ca;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 251
    invoke-static {p1, v4}, Lcom/tendcloud/tenddata/game/ca;->a(ILjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    return-object p0

    .line 257
    :cond_1
    :try_start_1
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 258
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [B

    .line 259
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_2

    .line 261
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1, v1}, Lcom/tendcloud/tenddata/game/ca;->a(ILjava/lang/String;)[B

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 270
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :goto_1
    if-eqz v0, :cond_3

    return-object v0

    :catchall_1
    nop

    goto :goto_2

    :catchall_2
    nop

    move-object p0, v2

    :goto_2
    if-eqz p0, :cond_3

    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 283
    :catchall_3
    :cond_3
    :try_start_5
    invoke-static {p1, v4}, Lcom/tendcloud/tenddata/game/ca;->a(ILjava/lang/String;)[B

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    return-object p0

    :catchall_4
    return-object v2
.end method

.method static a([B)[B
    .locals 4

    .line 158
    sget-object v0, Lcom/tendcloud/tenddata/game/ca;->c:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    .line 159
    invoke-static {}, Lcom/tendcloud/tenddata/game/cb;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 160
    invoke-static {}, Lcom/tendcloud/tenddata/game/ca;->b()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ca;->a([C[B)Ljavax/crypto/SecretKey;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/ca;->c:Ljavax/crypto/SecretKey;

    :cond_0
    const/16 v0, 0x13

    .line 165
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AES"

    goto :goto_0

    :cond_1
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 169
    :goto_0
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/tendcloud/tenddata/game/ca;->c:Ljavax/crypto/SecretKey;

    invoke-static {}, Lcom/tendcloud/tenddata/game/ca;->a()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 171
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static b()[B
    .locals 3

    const-string v0, "salt"

    .line 117
    sget-object v1, Lcom/tendcloud/tenddata/game/ca;->b:[B

    if-eqz v1, :cond_0

    return-object v1

    .line 121
    :cond_0
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/game/az$b;->AES_SALT_LOCK:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/az;->getFileLock(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 122
    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ca;->a(Ljava/lang/String;I)[B

    move-result-object v2

    sput-object v2, Lcom/tendcloud/tenddata/game/ca;->b:[B

    if-eqz v2, :cond_1

    .line 123
    array-length v2, v2

    if-nez v2, :cond_2

    .line 124
    :cond_1
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ca;->a(I)[B

    move-result-object v1

    sput-object v1, Lcom/tendcloud/tenddata/game/ca;->b:[B

    .line 125
    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ca;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :catchall_0
    :cond_2
    sget-object v0, Lcom/tendcloud/tenddata/game/az$b;->AES_SALT_LOCK:Lcom/tendcloud/tenddata/game/az$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/az$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/az;->releaseFileLock(Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/tendcloud/tenddata/game/ca;->b:[B

    return-object v0
.end method

.method static b([B)[B
    .locals 4

    .line 181
    sget-object v0, Lcom/tendcloud/tenddata/game/ca;->c:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Lcom/tendcloud/tenddata/game/cb;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 183
    invoke-static {}, Lcom/tendcloud/tenddata/game/ca;->b()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ca;->a([C[B)Ljavax/crypto/SecretKey;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/ca;->c:Ljavax/crypto/SecretKey;

    :cond_0
    const/16 v0, 0x13

    .line 188
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bp;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AES"

    goto :goto_0

    :cond_1
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 192
    :goto_0
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 193
    sget-object v1, Lcom/tendcloud/tenddata/game/ca;->c:Ljavax/crypto/SecretKey;

    invoke-static {}, Lcom/tendcloud/tenddata/game/ca;->a()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 194
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

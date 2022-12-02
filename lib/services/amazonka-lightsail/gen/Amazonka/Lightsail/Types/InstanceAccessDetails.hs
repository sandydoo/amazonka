{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.Lightsail.Types.InstanceAccessDetails
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Lightsail.Types.InstanceAccessDetails where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import Amazonka.Lightsail.Types.HostKeyAttributes
import Amazonka.Lightsail.Types.InstanceAccessProtocol
import Amazonka.Lightsail.Types.PasswordData
import qualified Amazonka.Prelude as Prelude

-- | The parameters for gaining temporary access to one of your Amazon
-- Lightsail instances.
--
-- /See:/ 'newInstanceAccessDetails' smart constructor.
data InstanceAccessDetails = InstanceAccessDetails'
  { -- | Describes the public SSH host keys or the RDP certificate.
    hostKeys :: Prelude.Maybe [HostKeyAttributes],
    -- | The name of this Amazon Lightsail instance.
    instanceName :: Prelude.Maybe Prelude.Text,
    -- | For RDP access, the password for your Amazon Lightsail instance.
    -- Password will be an empty string if the password for your new instance
    -- is not ready yet. When you create an instance, it can take up to 15
    -- minutes for the instance to be ready.
    --
    -- If you create an instance using any key pair other than the default
    -- (@LightsailDefaultKeyPair@), @password@ will always be an empty string.
    --
    -- If you change the Administrator password on the instance, Lightsail will
    -- continue to return the original password value. When accessing the
    -- instance using RDP, you need to manually enter the Administrator
    -- password after changing it from the default.
    password :: Prelude.Maybe Prelude.Text,
    -- | For SSH access, the temporary private key. For OpenSSH clients (e.g.,
    -- command line SSH), you should save this value to @tempkey@).
    privateKey :: Prelude.Maybe Prelude.Text,
    -- | The user name to use when logging in to the Amazon Lightsail instance.
    username :: Prelude.Maybe Prelude.Text,
    -- | For a Windows Server-based instance, an object with the data you can use
    -- to retrieve your password. This is only needed if @password@ is empty
    -- and the instance is not new (and therefore the password is not ready
    -- yet). When you create an instance, it can take up to 15 minutes for the
    -- instance to be ready.
    passwordData :: Prelude.Maybe PasswordData,
    -- | For SSH access, the public key to use when accessing your instance For
    -- OpenSSH clients (e.g., command line SSH), you should save this value to
    -- @tempkey-cert.pub@.
    certKey :: Prelude.Maybe Prelude.Text,
    -- | For SSH access, the date on which the temporary keys expire.
    expiresAt :: Prelude.Maybe Data.POSIX,
    -- | The protocol for these Amazon Lightsail instance access details.
    protocol :: Prelude.Maybe InstanceAccessProtocol,
    -- | The public IP address of the Amazon Lightsail instance.
    ipAddress :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InstanceAccessDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hostKeys', 'instanceAccessDetails_hostKeys' - Describes the public SSH host keys or the RDP certificate.
--
-- 'instanceName', 'instanceAccessDetails_instanceName' - The name of this Amazon Lightsail instance.
--
-- 'password', 'instanceAccessDetails_password' - For RDP access, the password for your Amazon Lightsail instance.
-- Password will be an empty string if the password for your new instance
-- is not ready yet. When you create an instance, it can take up to 15
-- minutes for the instance to be ready.
--
-- If you create an instance using any key pair other than the default
-- (@LightsailDefaultKeyPair@), @password@ will always be an empty string.
--
-- If you change the Administrator password on the instance, Lightsail will
-- continue to return the original password value. When accessing the
-- instance using RDP, you need to manually enter the Administrator
-- password after changing it from the default.
--
-- 'privateKey', 'instanceAccessDetails_privateKey' - For SSH access, the temporary private key. For OpenSSH clients (e.g.,
-- command line SSH), you should save this value to @tempkey@).
--
-- 'username', 'instanceAccessDetails_username' - The user name to use when logging in to the Amazon Lightsail instance.
--
-- 'passwordData', 'instanceAccessDetails_passwordData' - For a Windows Server-based instance, an object with the data you can use
-- to retrieve your password. This is only needed if @password@ is empty
-- and the instance is not new (and therefore the password is not ready
-- yet). When you create an instance, it can take up to 15 minutes for the
-- instance to be ready.
--
-- 'certKey', 'instanceAccessDetails_certKey' - For SSH access, the public key to use when accessing your instance For
-- OpenSSH clients (e.g., command line SSH), you should save this value to
-- @tempkey-cert.pub@.
--
-- 'expiresAt', 'instanceAccessDetails_expiresAt' - For SSH access, the date on which the temporary keys expire.
--
-- 'protocol', 'instanceAccessDetails_protocol' - The protocol for these Amazon Lightsail instance access details.
--
-- 'ipAddress', 'instanceAccessDetails_ipAddress' - The public IP address of the Amazon Lightsail instance.
newInstanceAccessDetails ::
  InstanceAccessDetails
newInstanceAccessDetails =
  InstanceAccessDetails'
    { hostKeys = Prelude.Nothing,
      instanceName = Prelude.Nothing,
      password = Prelude.Nothing,
      privateKey = Prelude.Nothing,
      username = Prelude.Nothing,
      passwordData = Prelude.Nothing,
      certKey = Prelude.Nothing,
      expiresAt = Prelude.Nothing,
      protocol = Prelude.Nothing,
      ipAddress = Prelude.Nothing
    }

-- | Describes the public SSH host keys or the RDP certificate.
instanceAccessDetails_hostKeys :: Lens.Lens' InstanceAccessDetails (Prelude.Maybe [HostKeyAttributes])
instanceAccessDetails_hostKeys = Lens.lens (\InstanceAccessDetails' {hostKeys} -> hostKeys) (\s@InstanceAccessDetails' {} a -> s {hostKeys = a} :: InstanceAccessDetails) Prelude.. Lens.mapping Lens.coerced

-- | The name of this Amazon Lightsail instance.
instanceAccessDetails_instanceName :: Lens.Lens' InstanceAccessDetails (Prelude.Maybe Prelude.Text)
instanceAccessDetails_instanceName = Lens.lens (\InstanceAccessDetails' {instanceName} -> instanceName) (\s@InstanceAccessDetails' {} a -> s {instanceName = a} :: InstanceAccessDetails)

-- | For RDP access, the password for your Amazon Lightsail instance.
-- Password will be an empty string if the password for your new instance
-- is not ready yet. When you create an instance, it can take up to 15
-- minutes for the instance to be ready.
--
-- If you create an instance using any key pair other than the default
-- (@LightsailDefaultKeyPair@), @password@ will always be an empty string.
--
-- If you change the Administrator password on the instance, Lightsail will
-- continue to return the original password value. When accessing the
-- instance using RDP, you need to manually enter the Administrator
-- password after changing it from the default.
instanceAccessDetails_password :: Lens.Lens' InstanceAccessDetails (Prelude.Maybe Prelude.Text)
instanceAccessDetails_password = Lens.lens (\InstanceAccessDetails' {password} -> password) (\s@InstanceAccessDetails' {} a -> s {password = a} :: InstanceAccessDetails)

-- | For SSH access, the temporary private key. For OpenSSH clients (e.g.,
-- command line SSH), you should save this value to @tempkey@).
instanceAccessDetails_privateKey :: Lens.Lens' InstanceAccessDetails (Prelude.Maybe Prelude.Text)
instanceAccessDetails_privateKey = Lens.lens (\InstanceAccessDetails' {privateKey} -> privateKey) (\s@InstanceAccessDetails' {} a -> s {privateKey = a} :: InstanceAccessDetails)

-- | The user name to use when logging in to the Amazon Lightsail instance.
instanceAccessDetails_username :: Lens.Lens' InstanceAccessDetails (Prelude.Maybe Prelude.Text)
instanceAccessDetails_username = Lens.lens (\InstanceAccessDetails' {username} -> username) (\s@InstanceAccessDetails' {} a -> s {username = a} :: InstanceAccessDetails)

-- | For a Windows Server-based instance, an object with the data you can use
-- to retrieve your password. This is only needed if @password@ is empty
-- and the instance is not new (and therefore the password is not ready
-- yet). When you create an instance, it can take up to 15 minutes for the
-- instance to be ready.
instanceAccessDetails_passwordData :: Lens.Lens' InstanceAccessDetails (Prelude.Maybe PasswordData)
instanceAccessDetails_passwordData = Lens.lens (\InstanceAccessDetails' {passwordData} -> passwordData) (\s@InstanceAccessDetails' {} a -> s {passwordData = a} :: InstanceAccessDetails)

-- | For SSH access, the public key to use when accessing your instance For
-- OpenSSH clients (e.g., command line SSH), you should save this value to
-- @tempkey-cert.pub@.
instanceAccessDetails_certKey :: Lens.Lens' InstanceAccessDetails (Prelude.Maybe Prelude.Text)
instanceAccessDetails_certKey = Lens.lens (\InstanceAccessDetails' {certKey} -> certKey) (\s@InstanceAccessDetails' {} a -> s {certKey = a} :: InstanceAccessDetails)

-- | For SSH access, the date on which the temporary keys expire.
instanceAccessDetails_expiresAt :: Lens.Lens' InstanceAccessDetails (Prelude.Maybe Prelude.UTCTime)
instanceAccessDetails_expiresAt = Lens.lens (\InstanceAccessDetails' {expiresAt} -> expiresAt) (\s@InstanceAccessDetails' {} a -> s {expiresAt = a} :: InstanceAccessDetails) Prelude.. Lens.mapping Data._Time

-- | The protocol for these Amazon Lightsail instance access details.
instanceAccessDetails_protocol :: Lens.Lens' InstanceAccessDetails (Prelude.Maybe InstanceAccessProtocol)
instanceAccessDetails_protocol = Lens.lens (\InstanceAccessDetails' {protocol} -> protocol) (\s@InstanceAccessDetails' {} a -> s {protocol = a} :: InstanceAccessDetails)

-- | The public IP address of the Amazon Lightsail instance.
instanceAccessDetails_ipAddress :: Lens.Lens' InstanceAccessDetails (Prelude.Maybe Prelude.Text)
instanceAccessDetails_ipAddress = Lens.lens (\InstanceAccessDetails' {ipAddress} -> ipAddress) (\s@InstanceAccessDetails' {} a -> s {ipAddress = a} :: InstanceAccessDetails)

instance Data.FromJSON InstanceAccessDetails where
  parseJSON =
    Data.withObject
      "InstanceAccessDetails"
      ( \x ->
          InstanceAccessDetails'
            Prelude.<$> (x Data..:? "hostKeys" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..:? "instanceName")
            Prelude.<*> (x Data..:? "password")
            Prelude.<*> (x Data..:? "privateKey")
            Prelude.<*> (x Data..:? "username")
            Prelude.<*> (x Data..:? "passwordData")
            Prelude.<*> (x Data..:? "certKey")
            Prelude.<*> (x Data..:? "expiresAt")
            Prelude.<*> (x Data..:? "protocol")
            Prelude.<*> (x Data..:? "ipAddress")
      )

instance Prelude.Hashable InstanceAccessDetails where
  hashWithSalt _salt InstanceAccessDetails' {..} =
    _salt `Prelude.hashWithSalt` hostKeys
      `Prelude.hashWithSalt` instanceName
      `Prelude.hashWithSalt` password
      `Prelude.hashWithSalt` privateKey
      `Prelude.hashWithSalt` username
      `Prelude.hashWithSalt` passwordData
      `Prelude.hashWithSalt` certKey
      `Prelude.hashWithSalt` expiresAt
      `Prelude.hashWithSalt` protocol
      `Prelude.hashWithSalt` ipAddress

instance Prelude.NFData InstanceAccessDetails where
  rnf InstanceAccessDetails' {..} =
    Prelude.rnf hostKeys
      `Prelude.seq` Prelude.rnf instanceName
      `Prelude.seq` Prelude.rnf password
      `Prelude.seq` Prelude.rnf privateKey
      `Prelude.seq` Prelude.rnf username
      `Prelude.seq` Prelude.rnf passwordData
      `Prelude.seq` Prelude.rnf certKey
      `Prelude.seq` Prelude.rnf expiresAt
      `Prelude.seq` Prelude.rnf protocol
      `Prelude.seq` Prelude.rnf ipAddress

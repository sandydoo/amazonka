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
-- Module      : Amazonka.CognitoIdentityProvider.Types.IdentityProviderType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CognitoIdentityProvider.Types.IdentityProviderType where

import Amazonka.CognitoIdentityProvider.Types.IdentityProviderTypeType
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | A container for information about an identity provider.
--
-- /See:/ 'newIdentityProviderType' smart constructor.
data IdentityProviderType = IdentityProviderType'
  { -- | The identity provider name.
    providerName :: Prelude.Maybe Prelude.Text,
    -- | The date the identity provider was last modified.
    lastModifiedDate :: Prelude.Maybe Core.POSIX,
    -- | A mapping of identity provider attributes to standard and custom user
    -- pool attributes.
    attributeMapping :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The identity provider details. The following list describes the provider
    -- detail keys for each identity provider type.
    --
    -- -   For Google and Login with Amazon:
    --
    --     -   client_id
    --
    --     -   client_secret
    --
    --     -   authorize_scopes
    --
    -- -   For Facebook:
    --
    --     -   client_id
    --
    --     -   client_secret
    --
    --     -   authorize_scopes
    --
    --     -   api_version
    --
    -- -   For Sign in with Apple:
    --
    --     -   client_id
    --
    --     -   team_id
    --
    --     -   key_id
    --
    --     -   private_key
    --
    --     -   authorize_scopes
    --
    -- -   For OIDC providers:
    --
    --     -   client_id
    --
    --     -   client_secret
    --
    --     -   attributes_request_method
    --
    --     -   oidc_issuer
    --
    --     -   authorize_scopes
    --
    --     -   authorize_url /if not available from discovery URL specified by
    --         oidc_issuer key/
    --
    --     -   token_url /if not available from discovery URL specified by
    --         oidc_issuer key/
    --
    --     -   attributes_url /if not available from discovery URL specified by
    --         oidc_issuer key/
    --
    --     -   jwks_uri /if not available from discovery URL specified by
    --         oidc_issuer key/
    --
    -- -   For SAML providers:
    --
    --     -   MetadataFile OR MetadataURL
    --
    --     -   IDPSignOut /optional/
    providerDetails :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A list of identity provider identifiers.
    idpIdentifiers :: Prelude.Maybe [Prelude.Text],
    -- | The date the identity provider was created.
    creationDate :: Prelude.Maybe Core.POSIX,
    -- | The identity provider type.
    providerType :: Prelude.Maybe IdentityProviderTypeType,
    -- | The user pool ID.
    userPoolId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IdentityProviderType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'providerName', 'identityProviderType_providerName' - The identity provider name.
--
-- 'lastModifiedDate', 'identityProviderType_lastModifiedDate' - The date the identity provider was last modified.
--
-- 'attributeMapping', 'identityProviderType_attributeMapping' - A mapping of identity provider attributes to standard and custom user
-- pool attributes.
--
-- 'providerDetails', 'identityProviderType_providerDetails' - The identity provider details. The following list describes the provider
-- detail keys for each identity provider type.
--
-- -   For Google and Login with Amazon:
--
--     -   client_id
--
--     -   client_secret
--
--     -   authorize_scopes
--
-- -   For Facebook:
--
--     -   client_id
--
--     -   client_secret
--
--     -   authorize_scopes
--
--     -   api_version
--
-- -   For Sign in with Apple:
--
--     -   client_id
--
--     -   team_id
--
--     -   key_id
--
--     -   private_key
--
--     -   authorize_scopes
--
-- -   For OIDC providers:
--
--     -   client_id
--
--     -   client_secret
--
--     -   attributes_request_method
--
--     -   oidc_issuer
--
--     -   authorize_scopes
--
--     -   authorize_url /if not available from discovery URL specified by
--         oidc_issuer key/
--
--     -   token_url /if not available from discovery URL specified by
--         oidc_issuer key/
--
--     -   attributes_url /if not available from discovery URL specified by
--         oidc_issuer key/
--
--     -   jwks_uri /if not available from discovery URL specified by
--         oidc_issuer key/
--
-- -   For SAML providers:
--
--     -   MetadataFile OR MetadataURL
--
--     -   IDPSignOut /optional/
--
-- 'idpIdentifiers', 'identityProviderType_idpIdentifiers' - A list of identity provider identifiers.
--
-- 'creationDate', 'identityProviderType_creationDate' - The date the identity provider was created.
--
-- 'providerType', 'identityProviderType_providerType' - The identity provider type.
--
-- 'userPoolId', 'identityProviderType_userPoolId' - The user pool ID.
newIdentityProviderType ::
  IdentityProviderType
newIdentityProviderType =
  IdentityProviderType'
    { providerName =
        Prelude.Nothing,
      lastModifiedDate = Prelude.Nothing,
      attributeMapping = Prelude.Nothing,
      providerDetails = Prelude.Nothing,
      idpIdentifiers = Prelude.Nothing,
      creationDate = Prelude.Nothing,
      providerType = Prelude.Nothing,
      userPoolId = Prelude.Nothing
    }

-- | The identity provider name.
identityProviderType_providerName :: Lens.Lens' IdentityProviderType (Prelude.Maybe Prelude.Text)
identityProviderType_providerName = Lens.lens (\IdentityProviderType' {providerName} -> providerName) (\s@IdentityProviderType' {} a -> s {providerName = a} :: IdentityProviderType)

-- | The date the identity provider was last modified.
identityProviderType_lastModifiedDate :: Lens.Lens' IdentityProviderType (Prelude.Maybe Prelude.UTCTime)
identityProviderType_lastModifiedDate = Lens.lens (\IdentityProviderType' {lastModifiedDate} -> lastModifiedDate) (\s@IdentityProviderType' {} a -> s {lastModifiedDate = a} :: IdentityProviderType) Prelude.. Lens.mapping Core._Time

-- | A mapping of identity provider attributes to standard and custom user
-- pool attributes.
identityProviderType_attributeMapping :: Lens.Lens' IdentityProviderType (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
identityProviderType_attributeMapping = Lens.lens (\IdentityProviderType' {attributeMapping} -> attributeMapping) (\s@IdentityProviderType' {} a -> s {attributeMapping = a} :: IdentityProviderType) Prelude.. Lens.mapping Lens.coerced

-- | The identity provider details. The following list describes the provider
-- detail keys for each identity provider type.
--
-- -   For Google and Login with Amazon:
--
--     -   client_id
--
--     -   client_secret
--
--     -   authorize_scopes
--
-- -   For Facebook:
--
--     -   client_id
--
--     -   client_secret
--
--     -   authorize_scopes
--
--     -   api_version
--
-- -   For Sign in with Apple:
--
--     -   client_id
--
--     -   team_id
--
--     -   key_id
--
--     -   private_key
--
--     -   authorize_scopes
--
-- -   For OIDC providers:
--
--     -   client_id
--
--     -   client_secret
--
--     -   attributes_request_method
--
--     -   oidc_issuer
--
--     -   authorize_scopes
--
--     -   authorize_url /if not available from discovery URL specified by
--         oidc_issuer key/
--
--     -   token_url /if not available from discovery URL specified by
--         oidc_issuer key/
--
--     -   attributes_url /if not available from discovery URL specified by
--         oidc_issuer key/
--
--     -   jwks_uri /if not available from discovery URL specified by
--         oidc_issuer key/
--
-- -   For SAML providers:
--
--     -   MetadataFile OR MetadataURL
--
--     -   IDPSignOut /optional/
identityProviderType_providerDetails :: Lens.Lens' IdentityProviderType (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
identityProviderType_providerDetails = Lens.lens (\IdentityProviderType' {providerDetails} -> providerDetails) (\s@IdentityProviderType' {} a -> s {providerDetails = a} :: IdentityProviderType) Prelude.. Lens.mapping Lens.coerced

-- | A list of identity provider identifiers.
identityProviderType_idpIdentifiers :: Lens.Lens' IdentityProviderType (Prelude.Maybe [Prelude.Text])
identityProviderType_idpIdentifiers = Lens.lens (\IdentityProviderType' {idpIdentifiers} -> idpIdentifiers) (\s@IdentityProviderType' {} a -> s {idpIdentifiers = a} :: IdentityProviderType) Prelude.. Lens.mapping Lens.coerced

-- | The date the identity provider was created.
identityProviderType_creationDate :: Lens.Lens' IdentityProviderType (Prelude.Maybe Prelude.UTCTime)
identityProviderType_creationDate = Lens.lens (\IdentityProviderType' {creationDate} -> creationDate) (\s@IdentityProviderType' {} a -> s {creationDate = a} :: IdentityProviderType) Prelude.. Lens.mapping Core._Time

-- | The identity provider type.
identityProviderType_providerType :: Lens.Lens' IdentityProviderType (Prelude.Maybe IdentityProviderTypeType)
identityProviderType_providerType = Lens.lens (\IdentityProviderType' {providerType} -> providerType) (\s@IdentityProviderType' {} a -> s {providerType = a} :: IdentityProviderType)

-- | The user pool ID.
identityProviderType_userPoolId :: Lens.Lens' IdentityProviderType (Prelude.Maybe Prelude.Text)
identityProviderType_userPoolId = Lens.lens (\IdentityProviderType' {userPoolId} -> userPoolId) (\s@IdentityProviderType' {} a -> s {userPoolId = a} :: IdentityProviderType)

instance Core.FromJSON IdentityProviderType where
  parseJSON =
    Core.withObject
      "IdentityProviderType"
      ( \x ->
          IdentityProviderType'
            Prelude.<$> (x Core..:? "ProviderName")
            Prelude.<*> (x Core..:? "LastModifiedDate")
            Prelude.<*> ( x Core..:? "AttributeMapping"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> ( x Core..:? "ProviderDetails"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "IdpIdentifiers" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "CreationDate")
            Prelude.<*> (x Core..:? "ProviderType")
            Prelude.<*> (x Core..:? "UserPoolId")
      )

instance Prelude.Hashable IdentityProviderType where
  hashWithSalt _salt IdentityProviderType' {..} =
    _salt `Prelude.hashWithSalt` providerName
      `Prelude.hashWithSalt` lastModifiedDate
      `Prelude.hashWithSalt` attributeMapping
      `Prelude.hashWithSalt` providerDetails
      `Prelude.hashWithSalt` idpIdentifiers
      `Prelude.hashWithSalt` creationDate
      `Prelude.hashWithSalt` providerType
      `Prelude.hashWithSalt` userPoolId

instance Prelude.NFData IdentityProviderType where
  rnf IdentityProviderType' {..} =
    Prelude.rnf providerName
      `Prelude.seq` Prelude.rnf lastModifiedDate
      `Prelude.seq` Prelude.rnf attributeMapping
      `Prelude.seq` Prelude.rnf providerDetails
      `Prelude.seq` Prelude.rnf idpIdentifiers
      `Prelude.seq` Prelude.rnf creationDate
      `Prelude.seq` Prelude.rnf providerType
      `Prelude.seq` Prelude.rnf userPoolId
